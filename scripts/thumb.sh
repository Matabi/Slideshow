directory=$1
i=1;
for f in `cd "$directory/hd/"; ls *.jpg`; do
	width=`identify -format %w "$directory/hd/$f"`;
	height=`identify -format %h "$directory/hd/$f"`;
    echo $f [$i];
    i=`expr $i + 1`;
    if [ `expr $width \> $height` -eq "1" ]; then
      cd "$directory"; convert hd/$f -resize 158x105 -gravity center -extent 105x105 thumb/$f;
    else
      cd "$directory"; convert hd/$f -resize 105x158 -gravity center -extent 105x105 thumb/$f;
    fi;
done;