
__global__ void rgb2grayKernel(uchar4* image, int width,int height)
{
    int Row = blockIdx.y * blockDim.y + threadIdx.y;
    int Col = blockIdx.x * blockDim.x + threadIdx.x;

    if (Row < height && Col < width) {
        float gray = 0.299*image.x + 0.587*image.y + 0.114 * image.z
    }
}
