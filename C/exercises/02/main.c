#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <errno.h>

#ifdef __linux__
#define __USE_POSIX
#endif
#include <signal.h>

typedef enum { ADD, SUB, MULT, DIV, OP_COUNT } op_t;

typedef struct {
    double A;
    double B;
    char operation;
    double result;
} calc_t;

calc_t c;

static void calc_init(void) {
    c.A = 0.0;
    c.B = 0.0;
    c.operation = '\0';
    c.result = 0.0;
}

static bool to_double(const char *buffer, double *value) {
    char *endptr;
    errno = 0;
    *value = strtod(buffer, &endptr);
    return !(errno == ERANGE || endptr == buffer || (*endptr && *endptr != '\n'));
}

static bool get_user_input(const char *msg, double *value) {
    char buffer[BUFSIZ];
    
    printf("%s", msg);
    if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
        return false;
    }
    buffer[strcspn(buffer, "\n")] = '\0';

    if (!to_double(buffer, value)) {
        return false;
    }

    return true;
}

static void set_operand(double A, double B) {
    c.A = A;
    if (B == 0.0) {
        fprintf(stderr, "Division by zero is not allowed.\n");
        exit(EXIT_FAILURE);
    }
    c.B = B;
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

static void signal_handler(int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");
        exit(EXIT_SUCCESS);
    }
}

int32_t main(void) {
    struct sigaction sa;
    
    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = &signal_handler;
    sa.sa_flags = 0;
    if (sigemptyset(&sa.sa_mask) == -1) {
        perror("sigemptyset");
        exit(EXIT_FAILURE);
    }
    if (sigaction(SIGINT, &sa, NULL) == -1) {
        perror("sigaction");
        exit(EXIT_FAILURE);
    }

    calc_init();

    double A, B;
    if (!get_user_input("A = ", &A)) {
        fprintf(stderr, "Invalid input.\n");
        exit(EXIT_FAILURE);
    }
    if (!get_user_input("B = ", &B)) {
        fprintf(stderr, "Invalid input.\n");
        exit(EXIT_FAILURE);
    }
    set_operand(A, B);
    
    op_t op = ADD;
    for (uint64_t i = 0; i < OP_COUNT; ++i, ++op) {
        do_operation(op);
        printf("A %c B = %.2lf %c %.2lf = %.2lf\n", c.operation, c.A, c.operation, c.B, c.result);
    }

    return 0;
}
