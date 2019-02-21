//= require rails-ujs
//= require_tree .


const picture = document.querySelector('#user_picture');
const form = document.querySelector('.edit_pic_form');

if (picture) {
  picture.addEventListener('input', (e) => {
    form.submit()
  })
}
