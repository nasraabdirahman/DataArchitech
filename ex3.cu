#include <jetson-utils/videoSource.h>
#include <jetson-utils/videoOutput.h>
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
            cudaHostAlloc((void**)&gray, width * height * sizeof(uchar4), cudaHostAllocMapped);
            cudaHostGetDevicePointer((void**)&grayDevice, gray, 0);
        }
        // config cuda threads and blocks
        dim3 DimBlock(16, 16);
        dim3 DimGrid((width + 15) / 16, (height + 15) / 16);
        rgb2grayKernel<<<DimGrid, DimBlock>>>(image,grayDevice, width, height);
        if ( output != NULL )
        {
            output->Render(image, input->GetWidth(), input->GetHeight());
            // Update status bar
            char str[256];
            sprintf(str, "Camera Viewer (%ux%u) | %0.1f FPS", input->GetWidth(),
            input->GetHeight(), output->GetFrameRate());
            output->SetStatus(str);
            if (!output->IsStreaming()) // check if the user quit
            break;
        }
        if(grayOut != NULL)
        {
            grayOut->Render(grayHost, width, height);
            if (!grayOut->IsStreaming())
                break;
        }
    }
    cudaDeviceSynchronize();
    cudaFreeHost(grayHost);
}
