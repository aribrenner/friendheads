$(function(){
  window.setTimeout(function(){
    var meta = window.location.pathname;
    var src = 'https://ariuk.herokuapp.com/images/friendheads?meta=' + meta
    var $img = $('<img>').attr('src', src)
    $('body').append($img);
    $img.load(function(){
      $img.remove();
    });
  }, 3000)
})
