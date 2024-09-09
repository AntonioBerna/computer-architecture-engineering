/*
Si realizzi un programma in linguaggio C che acquisisca da tastiera un numero e stampi un messaggio
che indichi se tale numero sia positivo oppure negativo.
*/

/*
    (00000000000000000000000000000011)_2 = (3)_10
    (10000000000000000000000000000000)_2 = 1 << 31
    l'and bit a bit tra i due numeri è 0 quindi il numero è positivo!

    (00000000000000000000000000000011)_2 = (3)_10
    (11111111111111111111111111111101)_2 = (-3)_10
    (10000000000000000000000000000000)_2 = 1 << 31
    l'and bit a bit tra i due numeri è 1 quindi il numero è negativo!
*/

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <assert.h>

#define LINE "-----------------------------------"

// Il -1 serve perchè sizeof(int) * CHAR_BIT = 4 * 8 = 32
// Infatti 1 << 32 = overflow, perchè un intero viene rappresentato con 32 bit
#define BITS (sizeof(int) * CHAR_BIT - 1) // Valore: 31 bit

struct number {
    int value, result;
    char *type;
};

#define BASE 10
static void set_number(struct number *k, const char **argv) {
    k->value = (int)strtol(*(argv + 1), (char **)NULL, BASE);
    k->type = malloc(sizeof(char));
    assert(k->type != NULL);
}
#undef BASE

static void find_type(struct number *k) {
    k->result = k->value & (1 << BITS) ? 1 : 0;
    switch (k->result) {
        case 0:
            strcpy(k->type, "positivo");
            break;
        case 1:
            strcpy(k->type, "negativo");
            break;
        default:
            fprintf(stderr, "Unexpected case\n");
            abort();
    }
}

#define MAX_BITS (BITS + 1) // Valore: 32 bit
#define BUFFER (MAX_BITS + 1) // Il +1 serve per posizionare '\0'
static char *print_bits(int n) {
    char *string = malloc(BUFFER * sizeof(char));
    assert(string != NULL);
    char *p = string + MAX_BITS;
    *p = 0;
    for (size_t i = 0; i < MAX_BITS; i++) {
        *--p = n & 1 ? '1' : '0';
        n >>= 1;
    }
    return string;
}
#undef MAX_BITS
#undef BUFFER

int main(int argc, const char **argv) {
    struct number k;
    if (argc != 2) {
        fprintf(stderr, "Try again with: %s [n]\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    set_number(&k, argv);
    find_type(&k);
    char *k_bits = print_bits(k.value);
    char *bits_mask = print_bits(1 << BITS);
    char *result_bits = print_bits(k.result);
    printf("Poichè\n\n%d (base 10) = %s (base 2)\n\nallora:\n\n%s &\n%s =\n%s\n%s -> %s\n", k.value, k_bits, k_bits, bits_mask, LINE, result_bits, k.type);
    free(k_bits);
    free(bits_mask);
    free(result_bits);
    free(k.type);
    return 0;
}

