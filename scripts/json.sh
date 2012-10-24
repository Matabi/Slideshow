directory=$1
subfolder=$2
echo "{ "slides": \"$subfolder\", \"thumb\": [" > $directory/$subfolder/directory.json;
for f in `cd "$directory/$subfolder/thumb"; ls *.jpg`; do
    echo "\"$f\"," >> $directory/$subfolder/directory.json;
done;
echo " null ]};" >> $directory/$subfolder/directory.json;
