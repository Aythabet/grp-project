class EscortsController < ApplicationController

  def index
    catch_markers
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
    catch_marker
  end

  def home
    if current_user.present?
      redirect_to escorts_path
    else
      render layout: false
    end
  end

  private

  def catch_markers
    @escorts = Escort.where.not(latitude: nil, longitude: nil)
    @markers = @escorts.map do |escort|
      {
        lng: escort.longitude,
        lat: escort.latitude
      }
    end
  end

  def catch_marker
    @markers = []
    @markers << {
        lng: @escort.longitude,
        lat: @escort.latitude
      }
  end

end
