$(function(){ 
  $("#show-tel").on("click", function(){
    const $this = $(this);
    $this.find("span").text( $this.data("number") );
  });

  $("#toggleDetails").on("click", function(){
    const details = $("#prop-details");
    details.toggleClass("open");
    if(details.hasClass("open")){
    // console.log('class found')
      $(this).text("Show less");
    } else {
      $(this).text("Show More");
    }
  }); 
});