$( document ).ready(function(){
  $('#content').find('.advance_poet').sort(function (a, b) {
    return $(a).attr('data-poet-score') - $(b).attr('data-poet-score');
  });
});
