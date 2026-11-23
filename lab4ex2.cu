#include <jetson-utils/videoSource.h>
#include <jetson-utils/videoOutput.h>

typedef unsigned int hist_t;
__global__ void rgb2grayKernel(uchar4*image, uchar4* gray, int width,int height)
{
    int Row = blockIdx.y * blockDim.y + threadIdx.y;
    int Col = blockIdx.x * blockDim.x + threadIdx.x;

    if (Row < height && Col < width) {
        int i = Row * width + Col;
        float value = 0.299f *image[i].x + 0.587f *image[i].y + 0.114f * image[i].z;
        unsigned char g = (unsigned char)value;
        //write output buffer
        gray[i].x = g;
        gray[i].y = g;
        gray[i].z = g;
        gray[i].w = image[i].w;
    }
}

__global__ void calcHistogramKernel(uchar4* gray, hist_t* histogram, int width, int height)
{
    int Row = blockIdx.y * blockDim.y + threadIdx.y;
    int Col = blockIdx.x * blockDim.x + threadIdx.x;

    if (Row < height && Col < width) {
        int i = Row * width + Col;
        unsigned char g = gray[i].x;
        atomicAdd(&histogram[g], 1);
    }
}
__global__ void plotHistogramKernel(uchar4* image, hist_t* histogram, int width,
int height, int max_freq)
{
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    uchar4 white_pixel = make_uchar4(255, 255, 255, 128);
    uchar4 black_pixel = make_uchar4(0, 0, 0, 128);
    if (index < 256)
    {
        int freq = histogram[index] * 256 / max_freq;
        for (int i = 0; i < 256; i++)
        {
            int row = height - i - 1;
            if (i <= freq)
            {
                image[row * width + 2*index] = white_pixel;
                image[row * width + 2*index+1] = white_pixel;
            }
            else
            {
                image[row * width + 2*index] = black_pixel;
                image[row * width + 2*index+1] = black_pixel;
            }
        }
    }
}

int main( int argc, char** argv )
{
    // create input/output streams
    videoSource* input = videoSource::Create(argc, argv, ARG_POSITION(0));
    videoOutput* output = videoOutput::Create(argc, argv, ARG_POSITION(1));
    if ( !input ) return 0;
    // capture/display loop
    videoOutput* grayOut = videoOutput::Create("display://0");
    uchar4* grayHost = NULL;
    uchar4* grayDevice = NULL;
    hist_t* d_histogram;
    hist_t histogram[256];
    cudaMalloc((void**)&d_histogram, 256 * sizeof(hist_t));
    while (true)
    {
        uchar4* image = NULL; // can be uchar3, uchar4, float3, float4
        int status = 0; // see videoSource::Status

        if (!input->Capture(&image, 1000, &status) ) // 1000ms timeout (default)
        {

            if (status == videoSource::TIMEOUT)
                continue;
            break; // EOS
        }
        //get image dimensions
        int width = input->GetWidth();
        int height = input->GetHeight();
        if(grayHost == NULL)
        {
            cudaHostAlloc((void**)&grayHost, width * height * sizeof(uchar4), cudaHostAllocMapped);
            cudaHostGetDevicePointer((void**)&grayDevice, grayHost, 0);
        }
        // config cuda threads and blocks
        dim3 DimBlock(16, 16);
        dim3 DimGrid((width + 15) / 16, (height + 15) / 16);
        rgb2grayKernel<<<DimGrid, DimBlock>>>(image,grayDevice, width, height);
        cudaMemset(d_histogram, 0, 256 * sizeof(hist_t));
        calcHistogramKernel<<<DimGrid, DimBlock>>>(grayDevice, d_histogram, width, height);
        plotHistogramKernel<<<1, 256>>>(image, d_histogram, width, height, 20000);
        plotHistogramKernel<<<1, 256>>>(grayDevice, d_histogram, width, height, 20000);
        cudaMemcpy(histogram, d_histogram, 256 * sizeof(hist_t), cudaMemcpyDeviceToHost);
        unsigned int sum = 0;
        for (int i = 0; i < 256; i++) {
            sum += histogram[i];
        }
        if ( output != NULL )
        {
            output->Render(image, input->GetWidth(), input->GetHeight());
            // Update status bar
            char str[256];
            sprintf(str, "Camera Viewer (%ux%u) | %0.1f FPS | Sum: %u", input->GetWidth(),
            input->GetHeight(), output->GetFrameRate(), sum);
            output->SetStatus(str);
            if (!output->IsStreaming()) // check if the user quit
            break;
        }
        if(grayOut != NULL)
        {
            grayOut->Render(grayHost, width, height);
            char str[256];
            sprintf(str, "Grayscale Viewer (%ux%u) | %0.1f FPS | Sum: %u", width, height, grayOut->GetFrameRate(), sum);
            grayOut->SetStatus(str);
            if (!grayOut->IsStreaming())
                break;
        }
    }
    cudaDeviceSynchronize();
    cudaFree(d_histogram);
    cudaFreeHost(grayHost);  
}
