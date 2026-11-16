#include "chrono"
#include "iostream"
#include <jetson-utils/videoSource.h>
#include <jetson-utils/videoOutput.h>
int main( int argc, char** argv )
{
    // create input/output streams
    videoSource* input = videoSource::Create(argc, argv, ARG_POSITION(0));
    videoOutput* output = videoOutput::Create(argc, argv, ARG_POSITION(1));
    if ( !input ) return 0;
    // capture/display loop
    while (true)
    {
        uchar4* image = NULL; // can be uchar3, uchar4, float3, float4
        int status = 0; // see videoSource::Status

        if ( !input->Capture(&image, 1000, &status) ) // 1000ms timeout (default)
        {

            if (status == videoSource::TIMEOUT)
            continue;
            break; // EOS
        }
        int width = input->GetWidth();
        int height = input->GetHeight();
        auto start = std::chrono::high_resolution_clock::now();
        for(int i = 0; i < width * height; i++)
        {   
            float gray = 0.299f *image[i].x + 0.587f *image[i].y + 0.114f * image[i].z;
            image[i].x = gray;
            image[i].y = gray;
            image[i].z = gray;
        }
        auto end = std::chrono::high_resolution_clock::now();
        double ms = std::chrono::duration<double,std::milli>(end - start).count();
        std::cout << "CPU time: " << ms << " ms";
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
    }
}

