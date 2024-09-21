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

static char *messages[] = {
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

static void signal_handler(int32_t sig) {
    if (sig == SIGINT) {
        puts("\nSIGINT signal received.");
        
        if (eqn.msg != NULL) {
            free(eqn.msg);
        }

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

    init_eqn();
    if (!get_user_input("a = ", &eqn.a)) {
        fprintf(stderr, "Invalid input.\n");
        exit(EXIT_FAILURE);
    }
    if (!get_user_input("b = ", &eqn.b)) {
        fprintf(stderr, "Invalid input.\n");
        exit(EXIT_FAILURE);
    }
    solve_eqn();

    printf("%s\n", eqn.msg);
    free(eqn.msg);
    
    return 0;
}
