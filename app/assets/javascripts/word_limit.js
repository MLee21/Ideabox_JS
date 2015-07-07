$( document ).ready(function() {
  $(function truncateText(){
    $(".idea_body").each(function(i){
      length = $(this).text().length;
      if(length > 100) {
        $(this).text($(this).text().substr(0,100)+'...');
      }
    });
  });
});