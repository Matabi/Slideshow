directory=$1
for f in `cd "$directory"; ls *.jpg`; do
  orientation=`identify -format '%[exif:orientation]' $directory/$f`;
  if [ $orientation -eq "8" ]; then
    convert $directory/$f -orient top-left -format '%[exif:orientation]' -rotate -90 $directory/fixed/$f
    echo $f;
  fi;
done;
