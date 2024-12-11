#pragma once

#include <stdint.h>

#define N (1 << 8) // ? 256

extern uint8_t plaintext[];
extern char key[];
extern uint8_t ciphertext[];

void swap(uint8_t *a, uint8_t *b);
int32_t KSA(char *key, uint8_t *S);
int32_t PRGA(uint8_t *S, uint8_t *plaintext, uint8_t *ciphertext, uint32_t len);
int32_t encode(char *key, uint8_t *plaintext, uint8_t *ciphertext, uint32_t len);
int32_t decode(char *key, uint8_t *plaintext, uint8_t *ciphertext, uint32_t len);
