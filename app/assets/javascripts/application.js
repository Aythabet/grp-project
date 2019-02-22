//= require rails-ujs
//= require_tree .


const picture = document.querySelector('#user_picture');
const form = document.querySelector('.edit_pic_form');

if (picture) {
  picture.addEventListener('input', (e) => {
    form.submit()
  })
}


//= padding add for the bookings badges infos

function expandBooking() {
  const hidden = document.querySelector('.booking-cards')
  if (hidden) {
  }
  else {
    hidden.insertAdjacentHTML("beforeend", `
    <div class="booking-infos">
      <p> <strong>Booking Infos:</strong></p >
      <p>Escort Reserved: <%=reservation.escort.pseudo %></p>
      <p>Last message: <%=reservation.message %></p>
      <p>Booking Date: <%=reservation.date %></p>
    </div>`);;;
  }
}
}

hidden.addEventListener(mouseover, (event) => {
  expandBooking(),
});


