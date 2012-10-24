server=ubuntu@ec2-dev:/var/www/photos.she-said-yes.info
rsync --verbose -zrv -e ssh bootstrap/ $server/bootstrap
rsync --verbose -zrv -e ssh css/ $server/css
rsync --verbose -zrv -e ssh fancybox/ $server/fancybox
rsync --verbose -zrv -e ssh jquery/ $server/jquery
rsync --verbose -zrv -e ssh slides/ $server/slides
rsync --verbose -zrv -e ssh wfobject/ $server/swfobject
rsync --verbose -zrv -e ssh slideshow.html $server/slideshow.html
rsync --verbose -zrv -e ssh img/wedding/*.json $server/img/wedding
rsync --progress -zrv -e ssh img/wedding/ $server/img/wedding

