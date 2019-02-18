class AddEscortToReservation < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :escort, foreign_key: true
  end
end
