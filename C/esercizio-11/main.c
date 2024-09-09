/*
Si scriva un programma in linguaggio C per calcolare il valore massimo e minimo di un insieme di N numeri inseriti da tastiera.
Il programma deve leggere il valore di N, ed in seguito deve leggere una sequenza di N numeri.
A questo punto il programma deve stampare il massimo ed il minimo tra i numeri inseriti.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#define BASE 10

struct array {
    int *items;
    unsigned size;
    int min, max;
};

static void set_array(struct array *v, const int argc, const char **argv) {
    v->size = argc - 2;
    v->items = malloc(v->size * sizeof(*(v->items)));
    assert(v->items != NULL);
    for (unsigned i = 2, j = 0; j < v->size; i++, j++) {
        *(v->items + j) = (int)strtol(*(argv + i), (char **)NULL, BASE);
    }
    v->min = v->max = *(v->items);
}

static void print_array(struct array *v) {
    printf("You entered: ");
    for (unsigned i = 0; i < v->size; i++) {
        printf("%d ", *(v->items + i));
    }
    puts("");
}

static void get_min_max(struct array *v) {
    for (unsigned i = 0; i < v->size; i++) {
        if (v->min > *(v->items + i)) {
            v->min = *(v->items + i);
        }
        if (v->max < *(v->items + i)) {
            v->max = *(v->items + i);
        }
    }
}

int main(int argc, const char **argv) {
    if (argc < 3 || argc - 2 != (int)strtol(*(argv + 1), (char **)NULL, BASE)) {
        fprintf(stderr, "Try again with: %s [N] arr[0] arr[1] ... arr[N - 1]\n", *argv);
        exit(EXIT_FAILURE);
    }
    struct array v;
    set_array(&v, argc, argv);
    print_array(&v);
    get_min_max(&v);
    printf("Min: %d\nMax: %d\n", v.min, v.max);
    free(v.items);
    return 0;
}
