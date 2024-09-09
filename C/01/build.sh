#!/bin/sh

CFLAGS="-Wall -Wextra -Werror -Wpedantic -g -std=c11"
TARGET="main"
BINARY="bin"
LOG="log"
VALGRIND_FLAGS="--leak-check=full --show-leak-kinds=all --log-file=$LOG/valgrind.txt"
TARGET_OPTIONS="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20"

mkdir -p $BINARY

if [ $# -eq 0 ]; then
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -c    Clean the project"
    echo "  -b    Build the project"
    echo "  -v    Test the project with Valgrind"
    exit 1
elif [ "$1" = "-c" ]; then
    [ -d $BINARY ] && rm -r $BINARY
    [ -d $LOG ] && rm -r $LOG
    echo "Clean completed."
    exit 0
elif [ "$1" = "-b" ]; then
    gcc $CFLAGS -o $BINARY/$TARGET $TARGET.c
    echo "Build completed. Run with ./$BINARY/$TARGET"
    exit 0
elif [ "$1" = "-v" ]; then
    gcc $CFLAGS -o $BINARY/$TARGET $TARGET.c
    mkdir -p $LOG
    valgrind $VALGRIND_FLAGS $BINARY/$TARGET $TARGET_OPTIONS
    echo "Valgrind completed. Check ./$LOG/valgrind.txt"
    exit 0
fi
