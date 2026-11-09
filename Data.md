
### ex1

Generating '/tmp/nsys-report-d4b7.qdstrm'
[1/7] [========================100%] report2.nsys-rep
[2/7] [========================100%] report2.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report2.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls     Avg (ns)        Med (ns)     Min (ns)      Max (ns)       StdDev (ns)             Name         
 --------  ---------------  ---------  ---------------  ------------  ----------  --------------  ---------------  ----------------------
     97,0   13 537 122 976          3  4 512 374 325,0  86 868 992,0  78 801 856  13 371 452 128  7 672 187 491,0  cudaMemcpy            
      2,0      297 364 512          3     99 121 504,0  97 363 712,0  91 817 472     108 183 328      8 323 321,0  cudaMalloc            
      0,0       29 605 088          3      9 868 362,0   9 983 136,0   9 536 096      10 085 856        292 299,0  cudaFree              
      0,0        1 410 368          1      1 410 368,0   1 410 368,0   1 410 368       1 410 368              0,0  cudaLaunchKernel      
      0,0            3 520          1          3 520,0       3 520,0       3 520           3 520              0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances      Avg (ns)          Med (ns)         Min (ns)        Max (ns)     StdDev (ns)                     Name                   
 --------  ---------------  ---------  ----------------  ----------------  --------------  --------------  -----------  ------------------------------------------
    100,0   13 114 630 560          1  13 114 630 560,0  13 114 630 560,0  13 114 630 560  13 114 630 560          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     60,0      248 827 296      1  248 827 296,0  248 827 296,0  248 827 296  248 827 296          0,0  [CUDA memcpy Device-to-Host]
     39,0      164 828 576      2   82 414 288,0   82 414 288,0   78 503 552   86 325 024  5 530 615,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report2.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report2.sqlite

    
