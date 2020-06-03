$(function(){
  $('textarea.form__message')
  .on('change keyup keydown paste cut', function(){
    if ($(this).outerHeight() > this.scrollHeight){
        $(this).height(1)
    }
    while ($(this).outerHeight() < this.scrollHeight){
        $(this).height($(this).height() + 1)
    }
  });
});
// $(function(){
//   $(document).on('change keyup keydown paste cut', 
//     'textarea.form__message', function()
//   {
//     if ($(this).outerHeight() > this.scrollHeight){
//       $(this).height(1)
//     }
//     while ($(this).outerHeight() < this.scrollHeight){
//       $(this).height($(this).height() + 1)
//     }
//   });
// });