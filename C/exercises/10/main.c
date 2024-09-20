/*
Si scriva un programma in linguaggio C per calcolare la media aritmetica di una serie di numeri inseriti da tastiera.
L’introduzione di un valore particolare pari a “0” indica il termine del caricamento dei dati.
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <errno.h>
#include <assert.h>

struct calculator {
    double n;
    unsigned counter;
    double sum, average;
};

#define BUFFER_SIZE (1 << 10) // 1024
#define BASE 10
static void scan(const char *msg, double *n) {
    char *buffer = malloc(BUFFER_SIZE);
    assert(buffer != NULL);
    bool success;
    char *endptr;
    do {
        printf("%s", msg);
        if (!fgets(buffer, BUFFER_SIZE, stdin)) {
            fprintf(stderr, "Reading input failed.\n");
            exit(EXIT_FAILURE);
        }
        errno = 0;
        *n = strtol(buffer, &endptr, BASE);
        if (errno == ERANGE) {
            fprintf(stderr, "Sorry, the number is too small or to large.\n");
            success = false;
        } else if (endptr == buffer) {
            success = false;
        } else if (*endptr && *endptr != '\n') {
            success = false;
        } else {
            success = true;
        }
    } while (!success);
    free(buffer);
}
#undef BASE
#undef BUFFER_SIZE

int main(void) {
    struct calculator c;
    c.sum = c.counter = 0;
    do {
        scan("Enter a number: ", &c.n);
        c.sum += c.n;
        c.counter++;
    } while (c.n != 0);
    c.average = c.sum / --c.counter;
    printf("You inserted %d values with average %.2lf\n", c.counter, c.average);
    return 0;
}
