var im = require('imagemagick');


im.identify('/Volumes/HDD/Pictures/Events/Wedding (2012)/Photograph/IMG_1360.jpg', function(err, features){
  if (err) throw err;
  console.log(features);
  // { format: 'JPEG', width: 3904, height: 2622, depth: 8 }
});