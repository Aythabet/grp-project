import "bootstrap";

// Calendar JS
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css'



const reservationDateElem = document.querySelector('#reservation_date')

console.log(reservationDateElem)

flatpickr(reservationDateElem);

// Profile JS
const picture = document.querySelector('#user_picture');
const form = document.querySelector('.edit_pic_form');

if (picture) {
  picture.addEventListener('input', (e) => {
    form.submit();
  });
}

//= padding add for the bookings badges infos

const activators = document.querySelectorAll('.notification');

activators.forEach((activator) => {
  const hidden = activator.querySelector('.booking-infos');
  if (hidden) {
    activator.addEventListener('click', () => {
      if (hidden.style.display = "none") {
        activator.style.paddingBottom = "100px";
        hidden.style.display = "block";
      } else {
        activator.style.paddingBottom = "0px";
        hidden.style.display = "none";
      }
    });
  }
});

activators.forEach((activator) => {
  const hidden = activator.querySelector('.booking-infos');
  if (hidden) {
    activator.addEventListener('click', () => {
      if (hidden.style.display = "block") {
        activator.style.paddingBottom = "100px";
        hidden.style.display = "block";
      } else {
        activator.style.paddingBottom = "0px";
        hidden.style.display = "none";
      }
    });
  }
});
