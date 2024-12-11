#include <stdio.h>

#define N (1 << 8) // ? 256

// ? Link: https://www.lddgo.net/en/encrypt/rc4
unsigned char plaintext[] = "x86 is love, x86 is life";
char key[] = "Calcolatori Elettronici tutorRC4"; // ! must be 32 bytes long
unsigned char ciphertext[N];

extern void *my_memcpy(void *dest, const void *src, unsigned int size);
extern unsigned int my_strlen(const unsigned char *str);
extern void swap(unsigned char *a, unsigned char *b);
extern int KSA(char *key, unsigned char *S);
extern int PRGA(unsigned char *S, unsigned char *plaintext, unsigned char *ciphertext, int len);
extern int encode(char *key, unsigned char *plaintext, unsigned char *ciphertext, int len);
extern int decode(char *key, unsigned char *ciphertext, unsigned char *plaintext, int len);

int main(void) {
    unsigned char l_ciphertext[N];
    
    encode(key, plaintext, l_ciphertext, my_strlen(plaintext));
    my_memcpy(ciphertext, l_ciphertext, my_strlen(plaintext));
    decode(key, ciphertext, plaintext, my_strlen(plaintext));

    printf("Original plaintext: %s\n", plaintext);
    printf("Ciphertext: ");
    for (unsigned int i = 0; i < my_strlen(plaintext); ++i) {
        printf("%02X ", ciphertext[i]);
    }
    printf("\nDecoded plaintext: %s\n", plaintext);

    return 0;
}
