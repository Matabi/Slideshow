directory=$1
i=1;
for f in `cd "$directory/hd"; ls *.jpg`; do
	width=`identify -format %w "$directory/hd/$f"`;
	height=`identify -format %h "$directory/hd/$f"`;
    echo $f [$i];
    i=`expr $i + 1`;
    if [ `expr $width \> $height` -eq "1" ]; then
      convert $directory/hd/$f -resize 1920x1080 $directory/$f;
    else
      convert $directory/hd/$f -resize 720x1080 $directory/$f;
    fi;
done;