
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
### ex2(256)
Collecting data...
Max error: 0
Generating '/tmp/nsys-report-8aa9.qdstrm'
[1/7] [========================100%] report20.nsys-rep
[2/7] [========================100%] report20.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report20.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls    Avg (ns)       Med (ns)     Min (ns)    Max (ns)     StdDev (ns)            Name         
 --------  ---------------  ---------  -------------  ------------  ----------  -----------  -------------  ----------------------
     78,0      587 327 104          3  195 775 701,0  35 459 552,0  35 378 528  516 489 024  277 745 887,0  cudaMemcpy            
     17,0      133 680 672          3   44 560 224,0  45 268 128,0  12 619 360   75 793 184   31 592 860,0  cudaMalloc            
      3,0       25 879 840          3    8 626 613,0   8 654 848,0   8 321 824    8 903 168      291 698,0  cudaFree              
      0,0        3 908 576          1    3 908 576,0   3 908 576,0   3 908 576    3 908 576            0,0  cudaLaunchKernel      
      0,0            1 600          1        1 600,0       1 600,0       1 600        1 600            0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)                     Name                   
 --------  ---------------  ---------  -------------  -------------  -----------  -----------  -----------  ------------------------------------------
    100,0      214 266 368          1  214 266 368,0  214 266 368,0  214 266 368  214 266 368          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     81,0      301 089 216      1  301 089 216,0  301 089 216,0  301 089 216  301 089 216          0,0  [CUDA memcpy Device-to-Host]
     19,0       70 457 792      2   35 228 896,0   35 228 896,0   35 149 472   35 308 320    112 322,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report20.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report20.sqlite

### ex2(512)

Collecting data...
Max error: 0
Generating '/tmp/nsys-report-dcb0.qdstrm'
[1/7] [========================100%] report21.nsys-rep
[2/7] [========================100%] report21.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report21.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls    Avg (ns)       Med (ns)     Min (ns)    Max (ns)     StdDev (ns)            Name         
 --------  ---------------  ---------  -------------  ------------  ----------  -----------  -------------  ----------------------
     77,0      552 941 760          3  184 313 920,0  39 088 096,0  35 367 712  478 485 952  254 767 244,0  cudaMemcpy            
     17,0      122 316 736          3   40 772 245,0  34 999 072,0  12 824 544   74 493 120   31 237 004,0  cudaMalloc            
      4,0       29 255 936          3    9 751 978,0   9 175 456,0   8 550 272   11 530 208    1 571 397,0  cudaFree              
      1,0        8 331 872          1    8 331 872,0   8 331 872,0   8 331 872    8 331 872            0,0  cudaLaunchKernel      
      0,0            1 536          1        1 536,0       1 536,0       1 536        1 536            0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)                     Name                   
 --------  ---------------  ---------  -------------  -------------  -----------  -----------  -----------  ------------------------------------------
    100,0      101 094 240          1  101 094 240,0  101 094 240,0  101 094 240  101 094 240          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     83,0      369 409 312      1  369 409 312,0  369 409 312,0  369 409 312  369 409 312          0,0  [CUDA memcpy Device-to-Host]
     16,0       74 026 560      2   37 013 280,0   37 013 280,0   35 210 272   38 816 288  2 549 838,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report21.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report21.sqlite

###ex2(1024)
Collecting data...
Max error: 0
Generating '/tmp/nsys-report-e4bb.qdstrm'
[1/7] [========================100%] report22.nsys-rep
[2/7] [========================100%] report22.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report22.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls    Avg (ns)      Med (ns)     Min (ns)    Max (ns)    StdDev (ns)            Name         
 --------  ---------------  ---------  ------------  ------------  ----------  -----------  ------------  ----------------------
     67,0      268 693 280          3  89 564 426,0  35 432 896,0  35 037 024  198 223 360  94 101 604,0  cudaMemcpy            
     25,0      102 777 568          3  34 259 189,0  15 498 336,0  12 971 680   74 307 552  34 705 900,0  cudaMalloc            
      6,0       24 905 760          3   8 301 920,0   8 284 160,0   8 253 312    8 368 288      59 509,0  cudaFree              
      0,0          890 496          1     890 496,0     890 496,0     890 496      890 496           0,0  cudaLaunchKernel      
      0,0            1 472          1       1 472,0       1 472,0       1 472        1 472           0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances    Avg (ns)      Med (ns)     Min (ns)    Max (ns)   StdDev (ns)                     Name                   
 --------  ---------------  ---------  ------------  ------------  ----------  ----------  -----------  ------------------------------------------
    100,0       52 884 448          1  52 884 448,0  52 884 448,0  52 884 448  52 884 448          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     67,0      144 222 208      1  144 222 208,0  144 222 208,0  144 222 208  144 222 208          0,0  [CUDA memcpy Device-to-Host]
     32,0       70 084 704      2   35 042 352,0   35 042 352,0   34 807 264   35 277 440    332 464,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report22.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report22.sqlite
### ex2(1024)

Collecting data...
Max error: 0
Generating '/tmp/nsys-report-e4bb.qdstrm'
[1/7] [========================100%] report22.nsys-rep
[2/7] [========================100%] report22.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report22.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls    Avg (ns)      Med (ns)     Min (ns)    Max (ns)    StdDev (ns)            Name         
 --------  ---------------  ---------  ------------  ------------  ----------  -----------  ------------  ----------------------
     67,0      268 693 280          3  89 564 426,0  35 432 896,0  35 037 024  198 223 360  94 101 604,0  cudaMemcpy            
     25,0      102 777 568          3  34 259 189,0  15 498 336,0  12 971 680   74 307 552  34 705 900,0  cudaMalloc            
      6,0       24 905 760          3   8 301 920,0   8 284 160,0   8 253 312    8 368 288      59 509,0  cudaFree              
      0,0          890 496          1     890 496,0     890 496,0     890 496      890 496           0,0  cudaLaunchKernel      
      0,0            1 472          1       1 472,0       1 472,0       1 472        1 472           0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances    Avg (ns)      Med (ns)     Min (ns)    Max (ns)   StdDev (ns)                     Name                   
 --------  ---------------  ---------  ------------  ------------  ----------  ----------  -----------  ------------------------------------------
    100,0       52 884 448          1  52 884 448,0  52 884 448,0  52 884 448  52 884 448          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     67,0      144 222 208      1  144 222 208,0  144 222 208,0  144 222 208  144 222 208          0,0  [CUDA memcpy Device-to-Host]
     32,0       70 084 704      2   35 042 352,0   35 042 352,0   34 807 264   35 277 440    332 464,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report22.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report22.sqlite
###ex3
