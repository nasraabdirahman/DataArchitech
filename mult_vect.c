#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>
#include <arm_neon.h>

#define MAX_THREADS 64

struct work {
    float *a, *b, *r;
    int count;     
    int reps;        
};
void mult_vect(float* a, float* b, float* r, int num)
{
    float32x4_t va, vb, vr;

    for (int i = 0; i < num; i += 4)
    {
        va = vld1q_f32(&a[i]);
        vb = vld1q_f32(&b[i]);

        vr = vmulq_f32(va, vb);

        vst1q_f32(&r[i], vr);
    }
}

void* worker(void* arg)
{
    struct work* w = (struct work*)arg;

    for (int i = 0; i < w->reps; i++)
        mult_vect(w->a, w->b, w->r, w->count);

    return NULL;
}

int main(int argc, char* argv[])
{
    // Läs inställningarna från terminalen
    int nthreads = (argc > 1) ? atoi(argv[1]) : 6;
    int num = (argc > 2) ? atoi(argv[2]) : 100000000;
    int reps = (argc > 3) ? atoi(argv[3]) : 1;
    float *a = (float*)aligned_alloc(16, (size_t)num * sizeof(float));
    float *b = (float*)aligned_alloc(16, (size_t)num * sizeof(float));
    float *r = (float*)aligned_alloc(16, (size_t)num * sizeof(float));
    for (int i = 0; i < num; i++) {
        a[i] = (i % 127) * 0.1457f;
        b[i] = (i % 331) * 0.1231f;
        r[i] = 0.0f;
    }
    pthread_t th[MAX_THREADS]; // Lagrar trådarnas ID
    struct work w[MAX_THREADS]; // En separat struct per tråd
  
    int part = (num / nthreads / 16) * 16;

    struct timespec ts_start;
    struct timespec ts_end_1;
    clock_gettime(CLOCK_MONOTONIC, &ts_start);
    for (int t = 0; t < nthreads; t++) {
        w[t].a = &a[t * part];
        w[t].b = &b[t * part];
        w[t].r = &r[t * part];
        w[t].count = (t == nthreads - 1) ? num - t * part : part;
        w[t].reps = reps;
        int rc = pthread_create(&th[t], NULL, worker, &w[t]);

        if (rc != 0) {
            fprintf(stderr, "pthread_create failed: %d\n", rc);
            for (int j = 0; j < t; j++) {
                pthread_join(th[j], NULL);
            }

            free(a);
            free(b);
            free(r);
            return 1;
        }
    }
    for (int t = 0; t < nthreads; t++) {
      pthread_join(th[t], NULL);
    }
    clock_gettime(CLOCK_MONOTONIC, &ts_end_1);
    double duration_vect = (ts_end_1.tv_sec - ts_start.tv_sec) + (ts_end_1.tv_nsec - ts_start.tv_nsec) * 1e-9;
    printf("Elapsed time NEON: %f\n", duration_vect);
    double sum = 0.0;

    for (int i = 0; i < 10 && i < num; i++) {
        sum += r[i];
    }

    printf("Sum: %f\n", sum);

    // Frigör allt reserverat minne
    free(a);
    free(b);
    free(r);

    return 0;
}

