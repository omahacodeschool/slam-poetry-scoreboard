$( document ).ready(function(){
  $("#round_scores p").sort(sort_li).appendTo('#round_scores');
  function sort_li(a, b){
      return ($(b).data('poet-score')) > ($(a).data('poet-score')) ? 1 : -1;    
  }
});
