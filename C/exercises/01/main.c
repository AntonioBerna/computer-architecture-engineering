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

static void calc_init(void) {
    c.vector = NULL;
    c.size = 0;
    c.sum = c.average = 0.0;
}

#define BASE 10
static bool to_int64(const char *buffer, int64_t *value) {
    char *endptr;
    errno = 0;
    *value = strtol(buffer, &endptr, BASE);
    return !(errno == ERANGE || endptr == buffer || (*endptr && *endptr != '\n'));
}
#undef BASE

static void calc_add_number(int64_t number) {
    c.size += 1;
    c.vector = realloc(c.vector, c.size * sizeof(*(c.vector)));
    assert(c.vector != NULL);
    c.vector[c.size - 1] = number;
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

static void calc_free(void) {
    free(c.vector);
    calc_init();
}

static void signal_handler(int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");

        final_report();
        calc_free();

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

    char buffer[BUFSIZ];
    while (true) {
        printf("Enter a positive integer (0 to stop): ");
        if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
            fprintf(stderr, "Input error.\n");
            continue;
        }
        buffer[strcspn(buffer, "\n")] = '\0';

        int64_t number;
        if (!to_int64(buffer, &number)) {
            fprintf(stderr, "Invalid input: %s\nPlease enter a valid integer.\n", buffer);
            continue;
        }

        if (number == 0) { break; }
        if (number < 0) {
            fprintf(stderr, "Invalid input: %s\nOnly positive integers are allowed.\n", buffer);
            continue;
        }

        calc_add_number(number);
    }

    final_report();
    calc_free();

    return 0;
}