#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#include <errno.h>
#include <stdbool.h>

#ifdef __linux__
#define __USE_POSIX
#endif
#include <signal.h>

typedef struct {
    uint64_t size;
    int64_t *vector;
    double sum;
    double average;
} calc_t;

calc_t c;

static void init_calc(void) {
    c.size = 0;
    c.vector = NULL;
    c.sum = c.average = 0.0;
}

static void calc_add_number(const int64_t number) {
    c.size += 1;
    c.vector = realloc(c.vector, c.size * sizeof(*(c.vector)));
    assert(c.vector != NULL);
    c.vector[c.size - 1] = number;
}

#define BASE 10
static bool to_int64(const char *buffer, int64_t *value) {
    char *endptr;
    errno = 0;
    *value = strtol(buffer, &endptr, BASE);
    return !(errno == ERANGE || endptr == buffer || (*endptr && *endptr != '\n'));
}
#undef BASE

static void get_user_input(const char *msg, int64_t *value) {
    char buffer[BUFSIZ];

    while (true) {
        printf("%s", msg);
        if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
            fprintf(stderr, "Invalid input.\n");
            continue;
        }
        buffer[strcspn(buffer, "\n")] = '\0';

        if (!to_int64(buffer, value)) {
            fprintf(stderr, "Invalid input.\n");
            continue;
        }
        if (*value == 0) { break; }
        if (*value < 0) {
            fprintf(stderr, "Invalid input: %ld\nOnly positive integers are allowed.\n", *value);
            continue;
        }
        calc_add_number(*value);
    }
}

static void calc_print_vector(void) {
    printf("You entered: ");
    for (uint64_t i = 0; i < c.size; ++i) {
        printf("%ld ", c.vector[i]);
    }
    puts("");
}

static void calc_get_average(void) {
    for (uint64_t i = 0; i < c.size; ++i) {
        c.sum += c.vector[i];
    }
    c.average = c.sum / c.size;
    printf("Arithmetic average: %.2lf / %ld = %.2lf\n", c.sum, c.size, c.average);
}

static void final_report(void) {
    if (c.size > 0) {
        calc_print_vector();
        calc_get_average();
    } else {
        puts("No numbers were entered.");
    }
}

static void free_calc(void) {
    if (c.vector != NULL) {
        free(c.vector);
        c.vector = NULL;
    }
}

static void signal_handler(const int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");

        final_report();
        free_calc();

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

    int64_t number;
    get_user_input("Enter a positive integer (0 to stop): ", &number);

    final_report();
    free_calc();

    return 0;
}