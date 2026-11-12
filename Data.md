
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
### ex3

Collecting data...
Max error: 0
Generating '/tmp/nsys-report-5f02.qdstrm'
[1/7] [========================100%] report25.nsys-rep
[2/7] [========================100%] report25.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report25.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls    Avg (ns)      Med (ns)     Min (ns)    Max (ns)    StdDev (ns)            Name         
 --------  ---------------  ---------  ------------  ------------  ----------  -----------  ------------  ----------------------
     55,0      238 668 128          3  79 556 042,0  36 103 200,0  35 146 848  167 418 080  76 092 258,0  cudaMemcpy            
     37,0      159 814 656          3  53 271 552,0  72 167 168,0  13 007 968   74 639 520  34 891 192,0  cudaMalloc            
      5,0       25 305 632          3   8 435 210,0   8 444 416,0   8 301 120    8 560 096     129 733,0  cudaFree              
      0,0        3 014 400          1   3 014 400,0   3 014 400,0   3 014 400    3 014 400           0,0  cudaLaunchKernel      
      0,0            1 792          1       1 792,0       1 792,0       1 792        1 792           0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances    Avg (ns)      Med (ns)     Min (ns)    Max (ns)   StdDev (ns)                     Name                   
 --------  ---------------  ---------  ------------  ------------  ----------  ----------  -----------  ------------------------------------------
    100,0       12 270 688          1  12 270 688,0  12 270 688,0  12 270 688  12 270 688          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     68,0      154 041 472      1  154 041 472,0  154 041 472,0  154 041 472  154 041 472          0,0  [CUDA memcpy Device-to-Host]
     31,0       70 868 672      2   35 434 336,0   35 434 336,0   34 923 328   35 945 344    722 674,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report25.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report25.sqlite

### ex3(48)

Collecting data...
Max error: 0
Generating '/tmp/nsys-report-e84e.qdstrm'
[1/7] [========================100%] report26.nsys-rep
[2/7] [========================100%] report26.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report26.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls    Avg (ns)      Med (ns)     Min (ns)    Max (ns)    StdDev (ns)            Name         
 --------  ---------------  ---------  ------------  ------------  ----------  -----------  ------------  ----------------------
     63,0      245 437 408          3  81 812 469,0  38 612 672,0  36 054 400  170 770 336  77 050 390,0  cudaMemcpy            
     29,0      115 903 648          3  38 634 549,0  13 144 096,0  13 109 888   89 649 664  44 180 388,0  cudaMalloc            
      6,0       25 609 280          3   8 536 426,0   8 544 608,0   8 411 264    8 653 408     121 279,0  cudaFree              
      0,0          754 720          1     754 720,0     754 720,0     754 720      754 720           0,0  cudaLaunchKernel      
      0,0            1 984          1       1 984,0       1 984,0       1 984        1 984           0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances    Avg (ns)      Med (ns)     Min (ns)    Max (ns)   StdDev (ns)                     Name                   
 --------  ---------------  ---------  ------------  ------------  ----------  ----------  -----------  ------------------------------------------
    100,0       16 510 688          1  16 510 688,0  16 510 688,0  16 510 688  16 510 688          0,0  multKernel(int, float *, float *, float *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     67,0      153 063 936      1  153 063 936,0  153 063 936,0  153 063 936  153 063 936          0,0  [CUDA memcpy Device-to-Host]
     32,0       74 266 528      2   37 133 264,0   37 133 264,0   35 895 200   38 371 328  1 750 886,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 536,871         2  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report26.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report26.sqlite
### ex4
Collecting data...
Max error: 0
Generating '/tmp/nsys-report-5913.qdstrm'
[1/7] [========================100%] report29.nsys-rep
[2/7] [========================100%] report29.sqlite
[3/7] Executing 'nvtx_sum' stats report
SKIPPED: /home/hpc25/Documents/jetson19/Lab2/report29.sqlite does not contain NV Tools Extension (NVTX) data.
[4/7] Executing 'cuda_api_sum' stats report

 Time (%)  Total Time (ns)  Num Calls     Avg (ns)        Med (ns)     Min (ns)     Max (ns)       StdDev (ns)     Name         
 --------  ---------------  ---------  ---------------  ------------  ----------  -------------  ---------------  ----------------------
     97,0    8 134 734 784          4  2 033 683 696,0  35 272 464,0  34 657 792  8 029 532 064  3 997 232 279,0  cudaMemcpy            
      1,0      156 668 896          4     39 167 224,0  28 656 608,0  11 877 600     87 478 080     35 291 640,0  cudaMalloc            
      0,0       39 916 608          4      9 979 152,0   9 397 456,0   8 833 120     12 288 576      1 583 495,0  cudaFree              
      0,0          973 952          1        973 952,0     973 952,0     973 952        973 952              0,0  cudaLaunchKernel      
      0,0            1 504          1          1 504,0       1 504,0       1 504          1 504              0,0  cuModuleGetLoadingMode

[5/7] Executing 'cuda_gpu_kern_sum' stats report

 Time (%)  Total Time (ns)  Instances     Avg (ns)         Med (ns)        Min (ns)       Max (ns)     StdDev (ns)                    Name                       
 --------  ---------------  ---------  ---------------  ---------------  -------------  -------------  -----------  -------------------------------------------------
    100,0    7 592 782 496          1  7 592 782 496,0  7 592 782 496,0  7 592 782 496  7 592 782 496          0,0  multKernel(int, float *, float *, float *, int *)

[6/7] Executing 'cuda_gpu_mem_time_sum' stats report

 Time (%)  Total Time (ns)  Count    Avg (ns)       Med (ns)      Min (ns)     Max (ns)    StdDev (ns)           Operation          
 --------  ---------------  -----  -------------  -------------  -----------  -----------  -----------  ----------------------------
     80,0      435 507 136      1  435 507 136,0  435 507 136,0  435 507 136  435 507 136          0,0  [CUDA memcpy Device-to-Host]
     19,0      104 661 408      3   34 887 136,0   34 588 128,0   34 430 144   35 643 136    659 463,0  [CUDA memcpy Host-to-Device]

[7/7] Executing 'cuda_gpu_mem_size_sum' stats report

 Total (MB)  Count  Avg (MB)  Med (MB)  Min (MB)  Max (MB)  StdDev (MB)           Operation          
 ----------  -----  --------  --------  --------  --------  -----------  ----------------------------
 805,306         3  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Host-to-Device]
 268,435         1  268,435   268,435   268,435   268,435   0,000        [CUDA memcpy Device-to-Host]

Generated:
    /home/hpc25/Documents/jetson19/Lab2/report29.nsys-rep
    /home/hpc25/Documents/jetson19/Lab2/report29.sqlite
