#!/bin/bash

SOURCE_DIR="/mnt/d/OneDrive - The Chinese University of Hong Kong/2. Writing"
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TARGET_DIR="$REPO_DIR/_posts"
echo "$REPO_DIR"
git checkout source
git pull
rm -rf "$TARGET_DIR/*"

today=$(date +'%Y-%m-%d')

cd "$SOURCE_DIR"
for folder in *; do
    if [ -d "$folder" ] ; then
        cd "$folder"
        for file in *; do
            if [[ "$file" =~ [^.*@publish\.md$] ]]; then
                date=$(date -r "$file" "+%Y-%m-%d")
                name="$date-$folder：${file// /-}"
                echo "Generated: $TARGET_DIR/${name%@publish.*}.md"
                cp "$file" "$TARGET_DIR/${name%@publish.*}.md"
            else
                :
            fi
        done
        cd ..
    else
        :
    fi
done

echo "Posts Updated!"