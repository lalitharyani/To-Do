// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
    //var status  = "Price - Low to High";
   /* $('#delete').click(function() {

       a = confirm("Are you sure you want to Logout?");
       if (a) {


       }
     return false;
   });*/
 $('#logout').click(function() {

       a = confirm("Are you sure you want to Logout?");
       if (a) {

            window.location = "/users/sign_out"
       }
     return false;
   });

    $('#task_submit').click(function(e) {
          var c = $("#description").val();
          var d = $("#priority").val();
          if((c == "") | (d == "") ) {

          alert("Please Fill All Entries Properly.")
          e.preventDefault();
          }
        else{

        }
});
      $('#list_submit').click(function(e) {
          var a = $("#name").val();
          var c = $("#description").val();
          var d = $("#priority").val();
          if((a == "")|(c == "") | (d == "" )) {

          alert("Please Fill All Entries Properly.")
          e.preventDefault();
          }
        else{

        }
});

   });

