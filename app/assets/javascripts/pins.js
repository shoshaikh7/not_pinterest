// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// $(function(){
//
//   var $container = $('#masonry-container');
//
//   $container.imagesLoaded(function(){
//     $container.masonry({
//       itemSelector: '.box',
//       columnWidth: 100
//     });
//   });
// });

$(function() {
  var $pins = $('#pins');

  $pins.imagesLoaded(function() {
    $pins.masonry({
      itemSelector: '.box',
      // Centers masonary container
      isFitWidth: true
    });
  });
});
