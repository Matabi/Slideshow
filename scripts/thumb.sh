directory=$1
for f in `cd "$directory"; ls *.jpg`; do
	width=`identify -format %w "$directory$f"`;
	height=`identify -format %h "$directory$f"`;
    if [ `expr $width \> $height` -eq "1" ]; then
	    echo $f $width x $height 158x100;
        cd "$directory"; convert $f -resize 158x105 -gravity center -extent 105x105 ../thumb/$f;
    else
        cd "$directory"; convert $f -resize 105x158 -gravity center -extent 105x105 ../thumb/$f;
    fi;
done;
