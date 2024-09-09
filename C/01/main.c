// Si scriva un programma in linguaggio C che legga un numero qualsiasi di
// interi positivi e visualizzi la loro media aritmetica.
// Si può utilizzare lo zero come indicazione che non si intende acquisire più numeri.

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>

typedef struct {
    uint64_t *array;
    uint64_t size;
    double sum;
    double average;
} calc_t;

#define BASE 10
static void calc_init(calc_t *c, const int32_t argc, const char **argv) {
    c->size = argc - 1;
    c->array = calloc(c->size, sizeof(*(c->array)));
    assert(c->array != NULL);
    for (uint64_t i = 1, j = 0; j < c->size; ++i, ++j) {
        *(c->array + j) = strtoul(*(argv + i), (char **)NULL, BASE);
    }
    c->sum = c->average = 0.0;
}
#undef BASE

static void calc_print_array(const calc_t *c) {
    printf("You entered: ");
    for (uint64_t i = 0; i < c->size; ++i) {
        printf("%lu ", *(c->array + i));
    }
    puts("");
}

static void calc_get_average(calc_t *c) {
    for (uint64_t i = 0; i < c->size; ++i) {
        c->sum += *(c->array + i);
    }
    c->average = c->sum / c->size;
    printf("Arithmetic average: %.2lf\n", c->average);
}

static void calc_free(calc_t *c) {
    free(c->array);
    c->array = NULL;
}

int32_t main(int32_t argc, const char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s arr[0] arr[1] ...\n", *argv);
        exit(EXIT_FAILURE);
    }

    calc_t c;
    calc_init(&c, argc, argv);
    calc_print_array(&c);
    calc_get_average(&c);
    calc_free(&c);

    return 0;
}
