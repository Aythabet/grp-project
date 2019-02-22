import "bootstrap";


import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css'

console.log(flatpickr);


const reservationDateElem = document.querySelector('#reservation_date')

console.log(reservationDateElem)

flatpickr(reservationDateElem);

const picture = document.querySelector('#user_picture');
const form = document.querySelector('.edit_pic_form');

if (picture) {
  picture.addEventListener('input', (e) => {
    form.submit();
  });
}

//= padding add for the bookings badges infos

const hidden = document.querySelector('.booking-infos');

if (hidden) {
  hidden.addEventListener('click', () => {
    if (hidden.style.display = "none") {
      hidden.style.display = "block";
    } else {
      hidden.style.display = "none";
    }
  });
}
