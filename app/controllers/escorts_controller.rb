class EscortsController < ApplicationController
  def index
    @escorts = Escort.all
  end

  def show
    @escort = Escort.find(params[:id])
  end

  def edit
    @escort = Escort.find(params[:id])
  end

  def update
    @escort = Escort.find(params[:id])
    if @escort.update(escort_params)
      redirect_to escort_path(@escort)
    else
      render :edit
    end
  end

  private

  def escort_params
    params.require(:escort).permit(:photo)
  end
end
