class EscortsController < ApplicationController
  def index
    @escorts = Escort.all
  end

  def show
    @escort = Escort.find(params[:id])
  end

  def edit
  end

  def update
  end


  def destroy
  end
end
