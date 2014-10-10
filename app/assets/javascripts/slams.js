$( document ).ready(function(){
  $(".slam_final p").sort(sort_li).appendTo('.slam_final');
  function sort_li(a, b){
      return ($(b).data('poet-score')) > ($(a).data('poet-score')) ? 1 : -1;    
  }
});