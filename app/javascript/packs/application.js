import "bootstrap";


import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css'

console.log(flatpickr);


const reservationDateElem = document.querySelector('#reservation_date')

console.log(reservationDateElem)

flatpickr(reservationDateElem);
