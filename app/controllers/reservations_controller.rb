class ReservationsController < ApplicationController
  before_action :set_escort, only: [:new, :create]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # we need `escort_id` to asssociate reservation with corresponding escort
    @reservation.escort = @escort
    @reservation.user = current_user
    if @reservation.save
      redirect_to escort_path(@escort)
    else
      render :new
    end
  end

  private

  def set_escort
    @escort = Escort.find(params[:escort_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :message)
  end
end
