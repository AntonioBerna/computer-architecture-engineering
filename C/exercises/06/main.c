#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <errno.h>

#ifdef __linux__
#define __USE_POSIX
#endif
#include <signal.h>

typedef enum { INDETERMINATE, IMPOSSIBLE, SOLVED, MESSAGE_COUNT } eqn_message_t;

typedef struct {
    double a;
    double b;
    double x;
    char *msg;
} eqn_t;

eqn_t eqn;

static const char *messages[] = {
    "Indeterminate equation",
    "Impossible equation",
    "Equation solved\na * x + b = 0 => x = -b / a = %.2lf"
};

static void init_eqn(void) {
    eqn.a = 0.0;
    eqn.b = 0.0;
    eqn.x = 0.0;
    eqn.msg = NULL;
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

        break;
    }
}

static void solve_eqn(void) {
    eqn_message_t idx;
    if (eqn.a == 0 && eqn.b == 0) {
        idx = INDETERMINATE;
    } else if (eqn.a == 0) {
        idx = IMPOSSIBLE;
    } else {
        idx = SOLVED;
        eqn.x = eqn.b == 0 ? 0.0 : -eqn.b / eqn.a;
    }
    
    uint64_t message_length = (idx == SOLVED) ? (uint64_t)snprintf(NULL, 0, messages[idx], eqn.x) + 1 : strlen(messages[idx]) + 1;
    eqn.msg = realloc(eqn.msg, message_length);
    assert(eqn.msg != NULL);
    if (snprintf(eqn.msg, message_length, messages[idx], eqn.x) < 0) {
        perror("snprintf");
        exit(EXIT_FAILURE);
    }
}

static void free_eqn(void) {
    if (eqn.msg != NULL) {
        free(eqn.msg);
        eqn.msg = NULL;
    }
}

static void signal_handler(const int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");
        
        free_eqn();
        
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

    init_eqn();

    get_user_input("a = ", &eqn.a);
    get_user_input("b = ", &eqn.b);

    solve_eqn();
    printf("%s\n", eqn.msg);

    free_eqn();
    
    return 0;
}
