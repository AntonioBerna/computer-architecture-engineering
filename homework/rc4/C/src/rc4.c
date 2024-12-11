#include "rc4.h"

// ? Link: https://www.lddgo.net/en/encrypt/rc4
uint8_t plaintext[] = "x86 is love, x86 is life";
char key[] = "Calcolatori Elettronici tutorRC4"; // ! must be 32 bytes long
uint8_t ciphertext[N];

void swap(uint8_t *a, uint8_t *b) {
    uint8_t tmp = *a;
    *a = *b;
    *b = tmp;
}

int32_t KSA(char *key, uint8_t *S) {
    int32_t j = 0;

    for (uint32_t i = 0; i < N; ++i) S[i] = i;

    for (uint32_t i = 0; i < N; ++i) {
        j = (j + S[i] + key[i % 32]) % N;
        swap(S + i, S + j);
    }

    return 0;
}

int32_t PRGA(uint8_t *S, uint8_t *plaintext, uint8_t *ciphertext, uint32_t len) {
    uint32_t i = 0;
    uint32_t j = 0;

    for (uint32_t n = 0; n < len; ++n) {
        i = (i + 1) % N;
        j = (j + S[i]) % N;
        swap(&S[i], &S[j]);
        uint8_t rnd = S[(S[i] + S[j]) % N];
        ciphertext[n] = rnd ^ plaintext[n];
    }

    return 0;
}

int32_t encode(char *key, uint8_t *plaintext, uint8_t *ciphertext, uint32_t len) {
    uint8_t S[N];
    KSA(key, S);
    PRGA(S, plaintext, ciphertext, len);
    return 0;
}

int32_t decode(char *key, uint8_t *plaintext, uint8_t *ciphertext, uint32_t len) {
    uint8_t S[N];
    KSA(key, S);
    PRGA(S, ciphertext, plaintext, len);
    return 0;
}
