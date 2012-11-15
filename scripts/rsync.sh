server=ubuntu@ec2-dev:/var/www/photos.she-said-yes.info
rsync --verbose -zrv -e ssh bootstrap/ $server/bootstrap
rsync --verbose -zrv -e ssh css/ $server/css
rsync --verbose -zrv -e ssh fancybox/ $server/fancybox
rsync --verbose -zrv -e ssh jquery/ $server/jquery
rsync --verbose -zrv -e ssh slides/ $server/slides
rsync --verbose -zrv -e ssh swfobject/ $server/swfobject
rsync --verbose -zrv -e ssh slideshow.html $server/slideshow.html
rsync -zrv -e ssh img/ $server/img/