#include "lib.h"

void *my_memcpy(void *dest, const void *src, uint32_t size) {
    uint8_t *d = (uint8_t *)dest;
    const uint8_t *s = (const uint8_t *)src;
    while (size--) *d++ = *s++;
    return dest;
}

uint32_t my_strlen(const uint8_t *str) {
    uint32_t len = 0;
    while (str[len] != '\0') ++len;
    return len;
}
