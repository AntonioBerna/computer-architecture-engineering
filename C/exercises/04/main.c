#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>
#include <stdbool.h>

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

int32_t main(void) {
    double value;
    if (!get_user_input("Insert a number: ", &value)) {
        fprintf(stderr, "Invalid input.\n");
        exit(EXIT_FAILURE);
    }
    
    printf("The number inserted is %s\n", value < 0 ? "negative" : "positive");
    return 0;
}