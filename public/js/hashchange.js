$(function(){
  $(window).on('hashchange', function(){
    var count = parseInt(window.location.hash.slice(1) || 1)
    FriendHeads.updateCount(count)
  })
})
