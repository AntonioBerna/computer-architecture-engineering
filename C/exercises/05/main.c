#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <errno.h>
#include <string.h>
#include <math.h>

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

    printf("abs(%.2lf) = %.2lf\n", value, fabs(value));
    return 0;
}