/*
Dato un numero intero tra 1 e 12, che rappresenta il mese corrente, stampare il
nome del mese per esteso (“Gennaio” ... “Dicembre”).
*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

const char *months[] = {
    "Gennaio", "Febbario", "Marzo",
    "Aprile", "Maggio", "Giugno",
    "Luglio", "Agosto", "Settembre",
    "Ottobre", "Novembre", "Dicembre"
};

struct month {
    int number;
    char *name;
};

#define BASE 10
static void fill_month(struct month *m, const char **argv) {
    m->number = (int)strtol(*(argv + 1), (char **)NULL, BASE);
    assert(m->number > 0 && m->number < 13);
    m->name = malloc(sizeof(char));
    assert(m->name != NULL);
}
#undef BASE

static void get_month(struct month *m) {
    strcpy(m->name, *(months + m->number - 1));
}

int main(int argc, const char **argv) {
    struct month m;
    if (argc != 2) {
        fprintf(stderr, "Try again with: %s [n]\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    fill_month(&m, argv);
    get_month(&m);
    printf("%s\n", m.name);
    free(m.name);
    return 0;
}
