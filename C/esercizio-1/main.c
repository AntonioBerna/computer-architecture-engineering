/*
Si scriva un programma in linguaggio C che legga un numero qualsiasi di
interi positivi e visualizzi la loro media aritmetica.
Si può utilizzare lo zero come indicazione che non si intende acquisire più numeri.
*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct calculator {
    unsigned *array, size;
    double sum, average;
};

#define BASE 10
static void set_array(struct calculator *c, const int argc, const char **argv) {
    c->size = argc - 1;
    c->array = malloc(c->size * sizeof(*(c->array)));
    assert(c->array != NULL);
    for (unsigned i = 1, j = 0; j < c->size; i++, j++) {
        *(c->array + j) = (unsigned)strtol(*(argv + i), (char **)NULL, BASE);
    }
    c->sum = 0.0;
}
#undef BASE

static void print_array(struct calculator *c) {
    printf("You entered: ");
    for (unsigned i = 0; i < c->size; i++) {
        printf("%u ", *(c->array + i));
    }
    puts("");
}

static void get_average(struct calculator *c) {
    for (unsigned i = 0; i < c->size; i++) {
        c->sum += *(c->array + i);
    }
    c->average = c->sum / c->size;
}

int main(int argc, const char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Try again with: %s arr[0] arr[1] ...\n", *argv);
        exit(EXIT_FAILURE);
    }
    struct calculator c;
    set_array(&c, argc, argv);
    print_array(&c);
    get_average(&c);
    printf("Arithmetic average: %.2lf\n", c.average);
    free(c.array);
    return 0;
}
