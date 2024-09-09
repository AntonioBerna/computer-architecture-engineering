#!/bin/sh

TARGET="hello"
DIR="./build"

mkdir -p $DIR

if [ "$1" = "clean" ]; then
    rm -r $DIR
    echo "Cleaned."
    exit 0
fi

as -o $DIR/$TARGET.o $TARGET.s
ld -o $DIR/$TARGET $DIR/$TARGET.o

echo "Done."
