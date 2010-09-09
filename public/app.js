$(function() {
  $("#command-line").keyup(function(event) {
    if (event.keyCode == '13') {
      event.preventDefault();
      jQuery.get('/'+ $(this).val(), function(result) {
          $("#command-line").select();
          $("#output").val(result);
      });
    }
  });
});