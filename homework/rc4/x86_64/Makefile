CC=gcc
CFLAGS=-Wall -Wextra -Werror -Wpedantic -g
TARGET=main

CSRCS=src/main.c
SSRCS=src/rc4.s

COBJS=$(CSRCS:.c=.o)
SOBJS=$(SSRCS:.s=.o)

%.o: %.c
	$(CC) $(CFLAGS) $< -c -o $@

%.o: %.s
	$(CC) $(CFLAGS) $< -c -o $@

all: $(COBJS) $(SOBJS)
	@mkdir -p ./bin
	$(CC) $(CFLAGS) $(COBJS) $(SOBJS) -o ./bin/$(TARGET)
	
.PHONY: run clean

run:
	./bin/$(TARGET)

clean:
	$(RM) -r ./bin $(COBJS) $(SOBJS)
