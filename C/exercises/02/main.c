#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <errno.h>
#include <stdarg.h>

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

static void init_calc(void) {
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

static void get_user_input(const char *msg, double *value, ...) {
    char buffer[BUFSIZ];
    op_t op;

    va_list args;
    va_start(args, value);
    op = va_arg(args, op_t);
    va_end(args);

    while (true) {
        printf("%s", msg);
        if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
            fprintf(stderr, "Invalid input.\n");
            continue;
        }
        buffer[strcspn(buffer, "\n")] = '\0';

        if (!to_double(buffer, value)) {
            fprintf(stderr, "Invalid input.\n");
            continue;
        }

        if (op == DIV && *value == 0.0) {
            fprintf(stderr, "Invalid input: %.2lf\nOnly non-zero numbers are allowed.\n", *value);
            continue;
        }
    
        break;
    }
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

static void final_report(void) {
    op_t op = ADD;
    for (uint64_t i = 0; i < OP_COUNT; ++i, ++op) {
        do_operation(op);
        printf("A %c B = %.2lf %c %.2lf = %.2lf\n", c.operation, c.A, c.operation, c.B, c.result);
    }
}

static void signal_handler(int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");
        exit(EXIT_SUCCESS);
    }
}

static void setup_signal_handling(void) {
    struct sigaction sa;
    sigset_t set;

    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = signal_handler;
    sa.sa_flags = 0;
    if (sigemptyset(&sa.sa_mask) == -1) {
        perror("sigemptyset");
        exit(EXIT_FAILURE);
    }
    if (sigaction(SIGINT, &sa, NULL) == -1) {
        perror("sigaction");
        exit(EXIT_FAILURE);
    }

    // ? Block all signals except SIGINT.
    if (sigfillset(&set) == -1) {
        perror("sigfillset");
        exit(EXIT_FAILURE);
    }
    if (sigdelset(&set, SIGINT) == -1) {
        perror("sigdelset");
        exit(EXIT_FAILURE);
    }
    if (sigprocmask(SIG_BLOCK, &set, NULL) == -1) {
        perror("sigprocmask");
        exit(EXIT_FAILURE);
    }
}

int32_t main(void) {
    setup_signal_handling();

    init_calc();

    get_user_input("A = ", &c.A);
    get_user_input("B = ", &c.B, DIV);
    
    final_report();

    return 0;
}
