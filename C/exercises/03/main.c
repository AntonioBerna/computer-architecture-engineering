/*
Si scriva un programma in linguaggio C che, dato un numero reale D immesso da tastiera, calcoli e stampi:
1. l’area del quadrato di lato D
2. l’area del cerchio di diametro D
3. l’area del triangolo equilatero di lato D
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <assert.h>

enum figures { SQUARE, CIRCLE, TRIANGLE };

struct figure {
    double D, area;
    char *name;
};

#define BASE 10
static void set_side(struct figure *fig, const char **argv) {
    fig->D = (double)strtol(*(argv + 1), (char **)NULL, BASE);
    fig->name = malloc(sizeof(char));
    assert(fig->name != NULL);
}
#undef BASE

static void square_area(struct figure *fig) {
    fig->area = pow(fig->D, 2);
}

static void circle_area(struct figure *fig) {
    fig->area = M_PI * pow(fig->D, 2);
}

static void triangle_area(struct figure *fig) {
    fig->area = (sqrt(3) / 4) * pow(fig->D, 2);
}

static void get_area(struct figure *fig, const enum figures f, void (*area)(struct figure *fig)) {
    switch (f) {
        case SQUARE:
            strcpy(fig->name, "Square");
            break;
        case CIRCLE:
            strcpy(fig->name, "Circle");
            break;
        case TRIANGLE:
            strcpy(fig->name, "Triangle");
            break;
        default:
            fprintf(stderr, "Unexpected case\n");
            abort();
    }
    area(fig);
}

int main(int argc, const char **argv) {
    struct figure fig;
    if (argc != 2) {
        fprintf(stderr, "Try again with: %s [D]\n", *argv);
        exit(EXIT_FAILURE);
    }
    set_side(&fig, argv);
    void (*areas[3])(struct figure *) = { square_area, circle_area, triangle_area };
    enum figures f = SQUARE;
    for (int i = 0; i < TRIANGLE - SQUARE + 1; ++i) {
        get_area(&fig, f, *(areas + i));
        printf("%s area: %.3lf\n", fig.name, fig.area);
        f++;
    }
    free(fig.name);
    return 0;
}
