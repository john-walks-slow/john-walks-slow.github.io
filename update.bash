#!/bin/bash
SOURCE_DIR="/mnt/d/OneDrive - The Chinese University of Hong Kong/1. Personal/博客"
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TARGET_DIR="$REPO_DIR/_posts"
echo "$REPO_DIR"
git checkout source
git pull

today=$(date +'%Y-%m-%d')

cd "$SOURCE_DIR"
for folder in *; do
    if [ -d "$folder" ] ; then
        cd "$folder"
        for file in *; do
            if [[ "$file" == *@publish.md ]]; then
                date=$(date -r "$file" "+%Y-%m-%d")
                name="$date-${file// /-}"
                echo "Generated: ${name%@publish.*}.md"
                mkdir -p "$TARGET_DIR/$folder" && cp -rf "$file" "$TARGET_DIR/$folder/${name%@publish.*}.md"
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

cd "$REPO_DIR"

yarn build