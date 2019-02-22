import "bootstrap";


import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css'

console.log(flatpickr);


const reservationDateElem = document.querySelector('#reservation_date')

console.log(reservationDateElem)

flatpickr(reservationDateElem);

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
