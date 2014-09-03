
function updateBannerImagePosition(){
  var scrollTop = $(window).scrollTop();
  $('.para-image').each(function(idx, ele){
    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .9*(scrollTop - imageStart);
    $(ele).css('top', newTop)
  })
}

$(window).on('scroll', function(){
  updateBannerImagePosition()
  var scrollTop = $(window).scrollTop();
  // $('.flying-image').css('left', scrollTop*10);
})
