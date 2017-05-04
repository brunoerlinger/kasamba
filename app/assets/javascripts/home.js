$(function () {

  $("#selectbox_categories").select2();


  $("#selectbox_categories").change(function () {
      location.href = $(this).val();
  })

  setTimeout(function() { $(".alert").alert("close"); }, 4000);
})

