$(function(){ 
  // for reveal btn phone/number 
  $("#show-tel").on("click", function(){
    const $this = $(this);
    $this.find("span").text( $this.data("number") );
  });

  // for reveal btn showmore/description 
  $("#toggleDetails").on("click", function(){
    const details = $("#prop-details");
    details.toggleClass("open");
    if(details.hasClass("open")){
      $(this).text("Show less");
    } else {
      $(this).text("Show More");
    }
  }); 
  
  // for modal to btn email
  $('#contact-modal').on('show.bs.modal', function (event) {
    const button = $(event.relatedTarget);
    const modal = $(this);
  });
});