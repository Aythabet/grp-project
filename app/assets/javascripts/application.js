//= require rails-ujs
//= require_tree .


const picture = document.querySelector('#user_picture');
const form = document.querySelector('.edit_pic_form');

console.log(form);

picture.addEventListener('input', (e) => {
  form.submit()
})
