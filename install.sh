#!/usr/bin/env bash
FILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd)"
TARGET_DIR="$HOME/.config"

if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
    echo "Directory $TARGET_DIR does not exist, create the directory"
fi

for f in "$FILE_DIR/config"/*; do
    filename=$(basename "$f")
    target=$TARGET_DIR/$filename
    if [[ -d $target ]]; then
        continue
    else
        ln -snvf $f $target
    fi
done
