/*
Si scriva un programma in linguaggio C che converta un numero binario in un numero decimale.
Il numero binario è rappresentato su N bit, definito come costante nel programma.
L’utente inserisce le cifre del numero binario un bit alla volta, partendo dal bit più significativo.
Il programma visualizzerà il numero decimale corrispondente.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#define N_BITS (sizeof(int)) // 4

static bool check_binary(const int argc, const char **argv) {
    bool flag = false;
    for (int i = 1; i < argc; i++) {
        if (!(!strcmp(*(argv + i), "0") || !strcmp(*(argv + i), "1"))) {
            flag = true;
        }
    }
    return flag;
}

static void print_binary(const int argc, const char **argv) {
    printf("Binary: ");
    for (int i = 1; i < argc; i++) {
        printf("%s", *(argv + i));
    }
    puts("");
}

#define BASE 10
static int print_decimal(const char **argv) {
    int n = 0;
    for (int i = N_BITS, j = 0; i >= 0; i--, j++) {
        n += strtol(*(argv + j), (char **)NULL, BASE) * (1 << i);
    }
    return n;
}
#undef BASE

int main(int argc, const char **argv) {
    if (argc != N_BITS + 1) {
        fprintf(stderr, "Try again with: %s [binary]\nNOTE: change N_BITS value! (default: 4)\n", *argv);
        exit(EXIT_FAILURE);
    }
    if (check_binary(argc, argv)) {
        fprintf(stderr, "Attention: the number entered is not binary!\n");
        exit(EXIT_FAILURE);
    }
    print_binary(argc, argv);
    printf("Decimal: %d\n", print_decimal(argv));
    return 0;
}
