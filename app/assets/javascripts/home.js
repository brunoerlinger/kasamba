$(function () {
// remove the below comment in case you need chnage on document ready
// location.href=jQuery("#selectbox").val();
  $("#selectbox_categories").change(function () {
      location.href = $(this).val();
  })
})


// $('select').select2({
//   ajax: {
//     url: function (params) {
//     return 'products/index' + params[:category];
//     }
//   }
// });
