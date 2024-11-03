#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <errno.h>
#include <string.h>
#include <assert.h>
#include <math.h>

#ifdef __linux__
#define __USE_POSIX
#endif
#include <signal.h>

#define M_PI atan(1) * 4

typedef enum { SQUARE, CIRCLE, TRIANGLE, FIGURE_TYPE_COUNT} figure_type_t;

typedef struct {
    double D;
    double area;
    char *name;
} figure_t;

figure_t fig;

static const char *figure_names[FIGURE_TYPE_COUNT] = { "Square", "Circle", "Triangle" };

static void init_figure(void) {
    fig.D = 0.0;
    fig.area = 0.0;
    fig.name = NULL;
}

static bool to_double(const char *buffer, double *value) {
    char *endptr;
    errno = 0;
    *value = strtod(buffer, &endptr);
    return !(errno == ERANGE || endptr == buffer || (*endptr && *endptr != '\n'));
}

static void get_user_input(const char *msg, double *value) {
    char buffer[BUFSIZ];

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

        if (*value <= 0.0) {
            fprintf(stderr, "Invalid input: %.2lf\nOnly positive numbers are allowed.\n", *value);
            continue;
        }
    
        break;
    }
}

static void square_area(figure_t *fig) { fig->area = pow(fig->D, 2); }
static void circle_area(figure_t *fig) { fig->area = M_PI * pow(fig->D, 2); }
static void triangle_area(figure_t *fig) { fig->area = (sqrt(3) / 4) * pow(fig->D, 2); }

static void get_area(figure_t *fig, const figure_type_t type, void (*get_area)(figure_t *fig)) {    
    uint64_t name_length = strlen(*(figure_names + type)) + 1;
    fig->name = realloc(fig->name, name_length);
    assert(fig->name != NULL);
    if (snprintf(fig->name, name_length, "%s", *(figure_names + type)) < 0) {
        perror("snprintf");
        exit(EXIT_FAILURE);
    }
    get_area(fig);
}

static void final_report(void) {
    void (*areas[FIGURE_TYPE_COUNT])(figure_t *) = { square_area, circle_area, triangle_area };

    figure_type_t type = SQUARE;
    for (uint64_t i = 0; i < FIGURE_TYPE_COUNT; ++i, ++type) {
        get_area(&fig, type, *(areas + i));
        printf("%s area: %.2lf\n", fig.name, fig.area);
    }
}

static void free_figure(void) {
    if (fig.name != NULL) {
        free(fig.name);
        fig.name = NULL;
    }
}

static void signal_handler(int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");

        free_figure();

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

    init_figure();
    
    get_user_input("Enter a positive integer number: ", &fig.D);
    final_report();

    free_figure();

    return 0;
}