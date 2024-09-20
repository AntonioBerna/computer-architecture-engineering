#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <assert.h>
#include <errno.h>

typedef enum { ADD, SUB, MULT, DIV } op_t;

typedef struct {
    double A;
    double B;
    char operation;
    double result;
} calc_t;

calc_t c;

static bool to_double(const char *buffer, double *value) {
    char *endptr;
    errno = 0;
    *value = strtod(buffer, &endptr);
    return !(errno == ERANGE || endptr == buffer || (*endptr && *endptr != '\n'));
}

static void set_operand(const char **argv) {
    if (!to_double(*(argv + 1), &c.A) || !to_double(*(argv + 2), &c.B)) {
        fprintf(stderr, "Invalid input.\n");
        exit(EXIT_FAILURE);
    }
    if (c.B == 0.0) {
        fprintf(stderr, "Division by zero is not allowed.\n");
        exit(EXIT_FAILURE);
    }
    c.operation = ' ';
    c.result = 0.0;
}

static void do_operation(const op_t op) {
    switch (op) {
        case ADD:
            c.operation = '+';
            c.result = c.A + c.B;
            break;
        case SUB:
            c.operation = '-';
            c.result = c.A - c.B;
            break;
        case MULT:
            c.operation = '*';
            c.result = c.A * c.B;
            break;
        case DIV:
            c.operation = '/';
            c.result = c.A / c.B;
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

    set_operand(argv);
    
    op_t op = ADD;
    uint32_t no_operations = DIV - ADD + 1;
    for (uint32_t i = 0; i < no_operations; ++i, ++op) {
        do_operation(op);
        printf("%.2lf %c %.2lf = %.2lf\n", c.A, c.operation, c.B, c.result);
    }

    return 0;
}
