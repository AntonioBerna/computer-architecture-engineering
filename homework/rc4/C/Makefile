CC=gcc
CFLAGS=-Wall -Wextra -Werror -Wpedantic
SRCS=src/main.c src/rc4.c src/lib.c
TARGET=rc4

all:
	@mkdir -p ./bin
	$(CC) $(CFLAGS) $(SRCS) -o ./bin/$(TARGET) -I./include

.PHONY: run clean

run:
	./bin/$(TARGET)

clean:
	$(RM) -r ./bin
