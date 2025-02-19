# Copy every 
if [[ -z "${PATH_TO_EVERYTHING}" ]]; then
    echo "Failed: PATH_TO_EVERYTHING is not set"
    exit 1
fi

# Reset the dir
rm -rf ./content/*
mkdir ./content/Zettelkasten

# Assets are not protected from public view
cp ${PATH_TO_EVERYTHING}/Assets/* ./content/Zettelkasten/
cp -r "${PATH_TO_EVERYTHING}/templates" "${PATH_TO_EVERYTHING}/_index.md" ./content

# Copy all non draft files over
grep -rl "draft:.*false" ${PATH_TO_EVERYTHING}/Zettelkasten | while read -r line ; do 
    cp "${line}" ./content/Zettelkasten
done
# grep -rli '!\[\](Pasted' * | xargs -0 sed -i '' -e "s/![](Pasted/![](Zettelkasten\/Pasted/g"
# grep -rli '!\[\](Pasted' * | xargs -0 sed -i "s/bar/bar/g"
# find . -type f -exec sed -i '' -e "s/foo/bar/g" {} \;
find . -type f -name '*.md' -exec sed -i '' "s/!\[\](Pasted/!\[\](Zettelkasten\/Pasted/g" {} +


