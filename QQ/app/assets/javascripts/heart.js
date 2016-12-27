$(function(){
  $('.heart2').hide();
  $('.heart4').hide();
$('.heart1').click(function(){
    $('.heart1').toggle();
    $('.heart2').toggle();
});
$('.heart2').click(function(){
    $('.heart1').toggle();
    $('.heart2').toggle();
});

$('.heart3').click(function(){
  console.log("ssss");
    $('.heart3').hide();
    $('.heart4').show();
});

});
