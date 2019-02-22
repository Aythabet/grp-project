import "bootstrap";


import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css'

console.log(flatpickr);


const reservationDateElem = document.querySelector('#reservation_date')

console.log(reservationDateElem)

flatpickr(reservationDateElem);

// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
