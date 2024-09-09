/*
Si realizzi un programma in linguaggio C che acquisisca da tastiera un numero e stampi il valore assoluto di tale numero.
*/

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#define BASE 10
#define BITS (sizeof(int) * CHAR_BIT - 1) // 4 * 8 - 1 = 31

static int bits_abs(int n) {
    int sign = n >> BITS;
    return (n ^ sign) - sign;
}

int main(int argc, const char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Try again with: %s [n]\n", *argv);
        exit(EXIT_FAILURE);
    }
    printf("%d\n", bits_abs((int)strtol(*(argv + 1), (char **)NULL, BASE)));
    return 0;
}
