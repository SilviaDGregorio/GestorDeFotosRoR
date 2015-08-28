//= require jquery-2.1.4
$(function() {
  var body = $('html');
  var backgrounds = ['url(assets/sky.jpg)', 'url(assets/sky1.jpg)','url(assets/sky2.jpg)','url(assets/sky3.jpg)'];
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