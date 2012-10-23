directory=$1
subfolder=$2
for f in `cd "$directory/$subfolder"; ls *.jpg`; do
    echo "<a class='fancybox thumb-$subfolder' rel='$subfolder' href='img/$subfolder/$f'><img class='img-polaroid' src='http://placehold.it/105x105'></a>";
done;
