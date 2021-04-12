$(function(){ 
  $("#toggleDetails").on("click", function(){
    var details = $("#prop-details");
    
    // console.log('clicked')
    details.toggleClass("open");
  }); 
});