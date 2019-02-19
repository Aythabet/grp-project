class ReservationsController < ApplicationController
  def index
    @escorts = Escort.all
  end

  def show
    @escort = Escort.find(params[:id])
  end

  private

  def set_escort
    @escort = Escort.find(params[:id])
  end

end
