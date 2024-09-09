/*
Si scriva un programma in linguaggio C per poter analizzare una sequenza di numeri.
Dati N numeri interi letti da tastiera si vogliono calcolare e stampare su schermo diversi risultati:
- quanti sono i numeri positivi, nulli e negativi
- quanti sono i numeri pari e dispari
- se la sequenza dei numeri inseriti e` crescente, decrescente oppure né crescente né decrescente.
*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <stdbool.h>

enum types { INCREASING, DECREASING, OTHER };

struct features {
    unsigned pos, null, neg, even, odd;
    enum types type;
    char *msg;
};

struct array {
    int *items;
    unsigned size;
    struct features f;
};

#define BASE 10
static void set_array(struct array *v, const int argc, const char **argv) {
    v->size = argc - 1;
    v->items = malloc(v->size * sizeof(*(v->items)));
    assert(v->items != NULL);
    for (unsigned i = 1, j = 0; j < v->size; i++, j++) {
        *(v->items + j) = (int)strtol(*(argv + i), (char **)NULL, BASE);
    }
    v->f.pos = v->f.null = v->f.neg = v->f.even = v->f.odd = 0;
    v->f.msg = malloc(sizeof(char));
    assert(v->f.msg != NULL);
}
#undef BASE

static void print_array(struct array *v) {
    printf("You entered: ");
    for (unsigned i = 0; i < v->size; i++) {
        printf("%d ", *(v->items + i));
    }
    puts("");
}

static void set_features(struct array *v) {
    unsigned incr = 1, decr = 1;
    v->f.type = OTHER;
    for (unsigned i = 0; i < v->size; i++) {
        *(v->items + i) == 0 ? ++(v->f.null) : *(v->items + i) > 0 ? ++(v->f.pos) : ++(v->f.neg);
        *(v->items + i) % 2 == 0 ? ++(v->f.even) : ++(v->f.odd);
    }
    for (unsigned i = 1; i < v->size; i++) {
        if (*(v->items + i - 1) > *(v->items + i)) {
            decr++;
        } else if (*(v->items + i - 1) < *(v->items + i)) {
            incr++;
        }
    }
    if (incr == v->size) {
        v->f.type = INCREASING;
    } else if (decr == v->size) {
        v->f.type = DECREASING;
    }
    switch (v->f.type) {
        case INCREASING:
            strcpy(v->f.msg, "Increasing");
            break;
        case DECREASING:
            strcpy(v->f.msg, "Decreasing");
            break;
        case OTHER:
            strcpy(v->f.msg, "Neither increasing nor decreasing");
            break;
        default:
            fprintf(stderr, "Unexpected case.\n");
            abort();
    }
}

int main(int argc, const char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Try again with: %s arr[0] arr[1] ...\n", *argv);
        exit(EXIT_FAILURE);
    }
    struct array v;
    set_array(&v, argc, argv);
    print_array(&v);
    set_features(&v);
    printf("Positive: %u\nNegative: %u\nNull: %u\nEven: %d\nOdd: %d\nTrend: %s\n", v.f.pos, v.f.neg, v.f.null, v.f.even, v.f.odd, v.f.msg);
    free(v.items);
    free(v.f.msg);
    return 0;
}
