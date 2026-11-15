

__global__ void rgb2grayKernel(uchar4* image, int width,int height)
{
    int Row = blockIdx.y * blockDim.y + threadIdx.y;
    int Col = blockIdx.x * blockDim.x + threadIdx.x;

    if (Row < height && Col < width) {
        int i = Row * width + Col;
        float gray = 0.299*image[i].x + 0.587*image[i].y + 0.114 * image[i].z;
        image[i].x = gray;
        image[i].y = gray;
        image[i].z = gray;
    }
}
