$(function() {
  var body = $('html');
  var backgrounds = ['url(../assets/images/sky.jpg)', 'url(../assets/images/sky1.jpg)','url(../assets/images/sky2.jpg)','url(../assets/images/sky3.jpg)'];
  var current = 0;

function nextBackground() {
  body.css(
   'background-image',
    backgrounds[current = ++current % backgrounds.length]
 );

 setTimeout(nextBackground, 10000);
 }
 setTimeout(nextBackground, 10000);
   body.css('background-image', backgrounds[0]);
 });