#include <stdio.h>
#include <stdlib.h>

void explode_bomb() {
    printf("Bomb exploded!\n");
    exit(1);
}

void phase_secret(const char *input) {
    if (input == NULL) {
        explode_bomb();
    }

    int value;
    int iterations = 0;
    int random_state = 4;

    if (sscanf(input, "%d", &value) != 1) {
        explode_bomb();
    }

    while (iterations < 32) {
        random_state = (random_state * 0x41c64e6d + 0x3039) & 0x7fffffff;

        if ((random_state & 1) != (value & 1)) {
            explode_bomb();
        }

        value >>= 1;
        iterations++;
    }

    printf("Phase secret defused successfully!\n");
}

void exploit() {
    int random_state = 4;
    int target_value = 0;
    
    for (int i = 0; i < 32; ++i) {
        random_state = (random_state * 0x41c64e6d + 0x3039) & 0x7fffffff;
        int bit = (random_state & 1);
        target_value |= (bit << i);
    }
    
    printf("Exploit phase_secret with: %d\n", target_value);
}

int main(void) {
    char input[100];
    
    exploit();

    printf("Enter a number: ");
    fgets(input, sizeof(input), stdin);
    phase_secret(input);
    
    return 0;
}

