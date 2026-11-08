#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <arm_neon.h>
#include <pthread.h>
#define MAX_THREADS 64 // the most threads the program can start

struct work { // everything one thread needs
    float *a, *b, *r; // start of this thread's part
    int count; // number of elements in the part
    int reps; // number of passes
};

void mult_std(float* a, float* b, float* r, int num)
{
    for (int i = 0; i < num; i++)
    {
        r[i] = a[i] * b[i];
    }
}

void* worker(void* arg)
{
    struct work* w = (struct work*)arg;
    // TODO: repeat w->reps times: mult_std(w->a, w->b, w->r, w->count);
    for (int i = 0; i < w->reps; i++) mult_std(w->a, w->b, w->r, w->count);
    
    return NULL;
}
    // in main: read the settings from the command line, as in multiply.c
int main(int argc, char * argv[])  {
    int nthreads = (argc > 1) ? atoi(argv[1]) : 6; // number of threads
    int num = (argc > 2) ? atoi(argv[2]) : 100000000; // array length
    int reps = (argc > 3) ? atoi(argv[3]) : 1; // passes
    float *a = (float*)aligned_alloc(16, num*sizeof(float));
    float *b = (float*)aligned_alloc(16, num*sizeof(float));
    float *r = (float*)aligned_alloc(16, num*sizeof(float));
    for (int i = 0; i < num; i++) {
        a[i] = (i % 127) * 0.1457f;
        b[i] = (i % 331) * 0.1231f;
        r[i] = 0.0f;
    }
    struct timespec ts_start;
    struct timespec ts_end_1;
    pthread_t th[MAX_THREADS];
    struct work w[MAX_THREADS]; // one struct per thread: never pass &t
    int part = num / nthreads;
    clock_gettime(CLOCK_MONOTONIC, &ts_start);

    for (int t = 0; t < nthreads; t++) {
        // TODO: fill in w[t] (the last thread also takes the rest)
        w[t].a = &a[t*part];
        w[t].b = &b[t*part];
        w[t].r = &r[t*part];
        w[t].count = (t == nthreads - 1) ? num - t * part : part;
        w[t].reps = reps;
        int rc = pthread_create(&th[t], NULL, worker, &w[t]);
        if (rc != 0) {
            fprintf(stderr, "pthread_create failed: %d\n", rc);

            // Vänta på trådar som redan skapats
            for (int j = 0; j < t; j++) {
                pthread_join(th[j], NULL);
            }

            free(a);
            free(b);
            free(r);
            return 1;
        }
    }
    
    for(long t = 0; t < nthreads; t++) {
        pthread_join(th[t], NULL);
    }
    clock_gettime(CLOCK_MONOTONIC, &ts_end_1);
    double duration_std = (ts_end_1.tv_sec - ts_start.tv_sec) + (ts_end_1.tv_nsec - ts_start.tv_nsec) * 1e-9;
    printf("Elapsed time std: %f\n", duration_std);
    double sum = 0.0;

    for (int i = 0; i < 10 && i < num; i++) {
        sum += r[i];
    }

    printf("Sum: %f\n", sum);

    free(a);
    free(b);
    free(r);
    return 0;
}

// TODO: pthread_join all threads, THEN take the end time
