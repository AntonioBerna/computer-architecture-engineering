// Write a C program that reads any number of positive integers and displays their arithmetic mean.
// You can use zero as an indication that you do not want to acquire any more numbers.

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>

typedef struct {
    uint64_t *vector;
    uint64_t size;
    double sum;
    double average;
} calc_t;

#define BASE 10
static void calc_init(calc_t *c, const int32_t argc, const char **argv) {
    c->size = argc - 1;
    c->vector = calloc(c->size, sizeof(*(c->vector)));
    assert(c->vector != NULL);
    for (uint64_t i = 1, j = 0; j < c->size; ++i, ++j) {
        *(c->vector + j) = strtoul(*(argv + i), (char **)NULL, BASE);
    }
    c->sum = c->average = 0.0;
}
#undef BASE

static void calc_print_vector(const calc_t *c) {
    printf("You entered: ");
    for (uint64_t i = 0; i < c->size; ++i) {
        printf("%lu ", *(c->vector + i));
    }
    puts("");
}

static void calc_get_average(calc_t *c) {
    for (uint64_t i = 0; i < c->size; ++i) {
        c->sum += *(c->vector + i);
    }
    c->average = c->sum / c->size;
    printf("Arithmetic average: %.2lf\n", c->average);
}

static void calc_free(calc_t *c) {
    free(c->vector);
    c->vector = NULL;
}

int32_t main(int32_t argc, const char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s arr[0] arr[1] ...\n", *argv);
        exit(EXIT_FAILURE);
    }

    calc_t c;
    calc_init(&c, argc, argv);
    calc_print_vector(&c);
    calc_get_average(&c);
    calc_free(&c);

    return 0;
}
