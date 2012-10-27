directory=$1
subfolder=$2
echo "slidesConfiguration[\"$subfolder\"] = [" > $directory/$subfolder/directory.js;
for f in `cd "$directory/$subfolder/thumb"; ls *.jpg`; do
    echo "\"$f\"," >> $directory/$subfolder/directory.js;
done;
echo " null ];" >> $directory/$subfolder/directory.js;
