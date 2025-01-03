CFLAGS = -Wall -Wextra -pedantic -g
LDFLAGS =
CSOURCES = test.c
ASMSOURCES = malloc.S
OBJECTS = $(CSOURCES:.c=.o) $(ASMSOURCES:.S=.o)
TARGET = malloc

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.S Makefile
	$(CC) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean
