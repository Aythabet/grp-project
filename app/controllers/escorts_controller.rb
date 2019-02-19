class EscortsController < ApplicationController
  def index
    @escorts = Escort.all
  end

  def show
    @escort = Escort.find(params[:id])
  end
end
