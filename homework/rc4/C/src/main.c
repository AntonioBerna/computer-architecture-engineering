#include <stdio.h>

#include "lib.h"
#include "rc4.h"

int32_t main(void) {
    uint8_t l_ciphertext[N];

    encode(key, plaintext, l_ciphertext, my_strlen(plaintext));
    my_memcpy(ciphertext, l_ciphertext, my_strlen(plaintext));
    decode(key, plaintext, ciphertext, my_strlen(plaintext));

    printf("Original plaintext: %s\n", plaintext);
    printf("Ciphertext: ");
    for (uint32_t i = 0; i < my_strlen(plaintext); ++i) {
        printf("%02X ", ciphertext[i]);
    }
    printf("\nDecoded plaintext: %s\n", plaintext);

    return 0;
}
