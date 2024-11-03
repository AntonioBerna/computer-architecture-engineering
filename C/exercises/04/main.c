#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>
#include <stdbool.h>

#ifdef __linux__
#define __USE_POSIX
#endif
#include <signal.h>

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

        break;
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

    double value;
    get_user_input("Insert a number: ", &value);
    printf("The number inserted is %s\n", value < 0 ? "negative" : "positive");

    return 0;
}