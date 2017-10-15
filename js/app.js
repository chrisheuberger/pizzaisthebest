$(document).foundation()

$(document).ready(function() {
  var bgArray = ['17-1600x1024.jpg', '18-1600x1024.jpg', '21-1600x1024.jpg', '22-1600x1024.jpg'];
  var bg = bgArray[Math.floor(Math.random() * bgArray.length)];
  var path = 'https://d10vui2ys4vwdi.cloudfront.net/desktop-background-';
  var imageUrl = path + bg;
  $('.clip-content').css('background-image', 'url(' + imageUrl +')');
  $('.clip-content:before').css('background-image', 'url(' + imageUrl +')');
});
