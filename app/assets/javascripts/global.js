var ActivitySet = function () {
  return {
    buildActivityNew: function () {
      
      $('.switch-label').click( function(){
        $(this).prev().bootstrapSwitch('toggleState');
      });

    }
  }
}();

$(document).ready(function(){

  if ( $('#new_activity_set').length > 0 ) {
    ActivitySet.buildActivityNew();
  }

});