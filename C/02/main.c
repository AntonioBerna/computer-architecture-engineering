/*
Si scriva un programma in linguaggio C capace di compiere le 4 operazioni tra due numeri reali inseriti da tastiera.
Dopo che sono stati inseriti i due numeri, detti A e B, il programma dovra` visualizzare i quattro valori A + B, A − B, A * B, A / B.
Si ipotizzi che sia B != 0.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

enum operations { ADD, SUB, MULT, DIV };

struct calculator {
    double A, B, result;
    char *operation;
};

#define BASE 10
static void set_operand(struct calculator *c, const char **argv) {
    c->A = (double)strtol(*(argv + 1), (char **)NULL, BASE);
    c->B = (double)strtol(*(argv + 2), (char **)NULL, BASE);
    assert(c->B != 0 && "NOTE: B != 0\n");
    c->operation = malloc(sizeof(char));
    assert(c->operation != NULL);
}
#undef BASE

static void do_operation(struct calculator *c, const enum operations op) {
    switch (op) {
        case ADD:
            strcpy(c->operation, "+");
            c->result = c->A + c->B;
            break;
        case SUB:
            strcpy(c->operation, "-");
            c->result = c->A - c->B;
            break;
        case MULT:
            strcpy(c->operation, "*");
            c->result = c->A * c->B;
            break;
        case DIV:
            strcpy(c->operation, "/");
            c->result = c->A / c->B;
            break;
        default:
            fprintf(stderr, "Unexpected case.\n");
            abort();
    }
}

int main(int argc, const char **argv) {
    if (argc != 3) {
        fprintf(stderr, "Try again with: %s [A] [B]\n", *argv);
        exit(EXIT_FAILURE);
    }
    struct calculator c;
    set_operand(&c, argv);
    enum operations op = ADD;
    for (int i = 0; i < DIV - ADD + 1; i++) {
        do_operation(&c, op);
        printf("%.2lf %s %.2lf = %.2lf\n", c.A, c.operation, c.B, c.result);
        op++;
    }
    free(c.operation);
    return 0;
}
