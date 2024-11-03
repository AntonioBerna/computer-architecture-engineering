// TODO: Refactor this code...

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <complex.h>
#include <math.h>

struct equation {
    double a, b, c, delta, x, x1, x2;
    double complex z1, z2;
    char *msg;
};

#define BASE 10
static void fill_eqn(struct equation *eqn, const char **argv) {
    eqn->a = (double)strtol(*(argv + 1), (char **)NULL, BASE);
    eqn->b = (double)strtol(*(argv + 2), (char **)NULL, BASE);
    eqn->c = (double)strtol(*(argv + 3), (char **)NULL, BASE);
    eqn->msg = malloc(sizeof(char));
    assert(eqn->msg != NULL);
}
#undef BASE

static void solve_fd_eqn(struct equation *eqn) {
    if (eqn->b == 0 && eqn->c == 0) {
        sprintf(eqn->msg, "Indeterminate equation");
    } else if (eqn->b == 0) {
        sprintf(eqn->msg, "Impossible equation");
    } else {
        eqn->x = eqn->c == 0 ? 0.0 : -eqn->c / eqn->b;
        sprintf(eqn->msg, "Equation solved\nb * x + c = 0 => x = -c / b = %.2lf", eqn->x);
    }
}

static void solve_sd_eqn(struct equation *eqn) {
    if (!eqn->delta) {
        eqn->x = -eqn->b / (2 * eqn->a);
        sprintf(eqn->msg, "Equation solved\na * x^2 + b * x + c = 0\n∆ = 0\nx = -b / (2 * a) = %.2lf", eqn->x);
    } else if (eqn->delta > 0) {
        eqn->x1 = eqn->b == 0 ? 0.0 : (-eqn->b + sqrt(eqn->delta)) / (2 * eqn->a);
        eqn->x2 = eqn->b == 0 ? 0.0 : (-eqn->b - sqrt(eqn->delta)) / (2 * eqn->a);
        sprintf(eqn->msg, "Equation solved\na * x^2 + b * x + c = 0\n∆ > 0\nx1 = (-b + sqrt(∆)) / (2 * a) = %.2lf\nx2 = (-b - sqrt(∆)) / (2 * a) = %.2lf", eqn->x1, eqn->x2);
    } else {
        eqn->z1 = eqn->b == 0 ? 0.0 : (-eqn->b + sqrt(-eqn->delta) * I) / (2 * eqn->a);
        eqn->z2 = eqn->b == 0 ? 0.0 : (-eqn->b - sqrt(-eqn->delta) * I) / (2 * eqn->a);
        sprintf(eqn->msg, "Equation solved\na * x^2 + b * x + c = 0\n∆ < 0\nz1 = (-b + sqrt(-∆) * i) / (2 * a) = %.2lf %+.2lf * i\nz2 = (-b - sqrt(-∆) * i) / (2 * a) = %.2lf %+.2lf * i", creal(eqn->z1), cimag(eqn->z1), creal(eqn->z2), cimag(eqn->z2));
    }
}

static void solve_eqn(struct equation *eqn) {
    eqn->delta = pow(eqn->b, 2) - 4 * eqn->a * eqn->c;
    if (!eqn->a) {
        solve_fd_eqn(eqn);
    } else {
        solve_sd_eqn(eqn);
    }
}

int main(int argc, const char **argv) {
    if (argc != 4) {
        fprintf(stderr, "Try again with: %s [a] [b] [c]\n", *argv);
        exit(EXIT_FAILURE);
    }
    struct equation eqn;
    fill_eqn(&eqn, argv);
    solve_eqn(&eqn);
    printf("%s\n", eqn.msg);
    free(eqn.msg);
    return 0;
}
