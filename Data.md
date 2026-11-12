
### ex1

Collecting data...
Max error: 0
Generating '/tmp/nsys-report-66b8.qdstrm'
[1/7] [========================100%] report19.nsys-rep
[2/7] [========================100%] report19.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report19.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls     Avg (ns)        Med (ns)     Min (ns)     Max (ns)       StdDev (ns)     Name         
 --------  ---------------  ---------  ---------------  ------------  ----------  -------------  ---------------  ----------------------
     97,0    9 215 890 400          3  3 071 963 466,0  36 395 520,0  35 134 368  9 144 360 512  5 258 850 140,0  cudaMemcpy            
      1,0      181 200 288          3     60 400 096,0  56 904 320,0  49 298 688     74 997 280     13 201 126,0  cudaMalloc            
      0,0       26 359 552          3      8 786 517,0   8 511 584,0   8 338 016      9 509 952        632 494,0  cudaFree              
      0,0        2 988 864          1      2 988 864,0   2 988 864,0   2 988 864      2 988 864              0,0  cudaLaunchKernel      
      0,0            2 240          1          2 240,0       2 240,0       2 240          2 240              0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances     Avg (ns)         Med (ns)        Min (ns)       Max (ns)     StdDev (ns)                 Name                   
 --------  ---------------  ---------  ---------------  ---------------  -------------  -------------  -----------  ------------------------------------------
    100,0    8 984 455 104          1  8 984 455 104,0  8 984 455 104,0  8 984 455 104  8 984 455 104          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     69,0      158 391 744      1  158 391 744,0  158 391 744,0  158 391 744  158 391 744          0,0  [CUDA memcpy Device-to-Host]
     31,0       71 137 952      2   35 568 976,0   35 568 976,0   34 978 624   36 159 328    834 883,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report19.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report19.sqlite
### ex2

