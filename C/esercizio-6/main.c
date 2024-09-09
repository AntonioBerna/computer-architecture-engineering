/*
Data l’equazione a * x + b = 0 con a e b inseriti da tastiera, scrivere un programma in linguaggio C per determinare
il valore di x, se esiste, che risolve l'equazione.
*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct equation {
    double a, b, x;
    char *msg;
};

#define BASE 10
static void fill_eqn(struct equation *eqn, const char **argv) {
    eqn->a = (double)strtol(*(argv + 1), (char **)NULL, BASE);
    eqn->b = (double)strtol(*(argv + 2), (char **)NULL, BASE);
    eqn->msg = malloc(sizeof(char));
    assert(eqn->msg != NULL);
}
#undef BASE

static void solve_eqn(struct equation *eqn) {
    if (eqn->a == 0 && eqn->b == 0) {
        sprintf(eqn->msg, "Indeterminate equation");
    } else if (eqn->a == 0) {
        sprintf(eqn->msg, "Impossible equation");
    } else {
        eqn->x = eqn->b == 0 ? 0.0 : -eqn->b / eqn->a;
        sprintf(eqn->msg, "Equation solved\na * x + b = 0 => x = -b / a = %.2lf", eqn->x);
    }
}

int main(int argc, const char **argv) {
    struct equation eqn;
    if (argc != 3) {
        fprintf(stderr, "Try again with: %s [a] [b]\n", *argv);
        exit(EXIT_FAILURE);
    }
    fill_eqn(&eqn, argv);
    solve_eqn(&eqn);
    printf("%s\n", eqn.msg);
    free(eqn.msg);
    return 0;
}
