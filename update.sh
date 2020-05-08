source_dir="/mnt/d/OneDrive - The Chinese University of Hong Kong/2. Writing"

git checkout source
rm -rf _posts/*
cp -r "$source_dir"/* _posts/

today=$(date +'%Y-%m-%d')

cd _posts
today=$(date +'%Y-%m-%d')

for folder in source_dir; do
    if [ -d $folder ] ; then
        cd $folder
        for file in *; do
            if [[ $file =~ ^.*@publish.md$ ]]; then
                date=$(date -r "$file" "+%Y-%m-%d")
                name="$date-$folder | ${file// /-}"
                mv "$file" "${name%@publish.*}.md"
            fi
        done
        cd ..
    else
        :
    fi
done


echo "Posts Updated!"

cd ..

git add .
git commit -m "Update posts $today"
git push

echo "Source Pushed!"

yarn build

cd _site
git checkout master
git add .
git commit -m "Deploy $today"
git push --force

echo "Master Pushed!"

cd ..
git checkout source