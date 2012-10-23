directory=$1
for f in `cd "$directory"; ls *.jpg`; do
    echo $f;
    cd "$directory"; convert $f -resize 1920x1080 ../$f;
done;
