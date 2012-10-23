directory=$1
for f in `cd "$directory"; ls *.jpg`; do
    echo $f;
    cd "$directory"; convert $f -resize 930x618 -gravity center -extent 930x455 ../$f;
done;
