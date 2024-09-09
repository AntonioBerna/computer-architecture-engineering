#!/bin/sh

CFLAGS="-Wall -Wextra -Werror -g -std=c11"
TARGET="main"
DIR="build"

mkdir -p $DIR

if [ "$1" = "clean" ]; then
    rm -r $DIR
    echo "Clean completed."
    exit 0
fi

gcc $CFLAGS -o $DIR/$TARGET $TARGET.c
echo "Build completed. Run with ./$DIR/$TARGET"
