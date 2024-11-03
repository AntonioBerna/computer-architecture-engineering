#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>
#include <string.h>
#include <stdbool.h>
#include <errno.h>

#ifdef __linux__
#define __USE_POSIX
#endif
#include <signal.h>

static const char *months[] = {
    "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December"
};

#define BASE 10
static bool to_uint8(const char *buffer, uint8_t *value) {
    char *endptr;
    errno = 0;
    *value = (uint8_t)strtol(buffer, &endptr, BASE);
    return !(errno == ERANGE || endptr == buffer || (*endptr && *endptr != '\n'));
}
#undef BASE

static void get_user_input(const char *msg, uint8_t *value) {
    char buffer[BUFSIZ];

    while (true) {
        printf("%s", msg);
        if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
            fprintf(stderr, "Invalid input.\n");
            continue;
        }
        buffer[strcspn(buffer, "\n")] = '\0';

        if (!to_uint8(buffer, value)) {
            fprintf(stderr, "Invalid input.\n");
            continue;
        }
        if (*value < 1 || *value > 12) {
            fprintf(stderr, "Invalid input: %d\nOnly 1-12 are valid.\n", *value);
            continue;
        }

        break;
    }
}

static const char *get_month(uint8_t number) {
    return *(months + --number);
}

static void signal_handler(const int32_t sig) {
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

    uint8_t number;
    get_user_input("Enter a month number: ", &number);
    printf("%s\n", get_month(number));

    return 0;
}
