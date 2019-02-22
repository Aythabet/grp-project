class EscortsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        pseudo ILIKE :query\
        OR city ILIKE :query\
        OR gender ILIKE :query" # => by city in field
      @escorts = Escort.where(sql_query, query: "%#{params[:query]}%")
    else
      @escorts = Escort.all
    end
  end

  def show
    @escort = Escort.find(params[:id])
  end

  def home
    if current_user.present?
      redirect_to escorts_path
    else
      render layout: false
    end
  end
end

