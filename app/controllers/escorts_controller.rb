class EscortsController < ApplicationController
  def index
    if params[:query].present?
     @escorts = Escort.where("pseudo ILIKE ?", "%#{params[:query]}%")
      # @escorts = Escort.where(pseudo: params[:query])
    else
      @escorts = Escort.all
    end
  end

  def show
    @escort = Escort.find(params[:id])
  end
end
