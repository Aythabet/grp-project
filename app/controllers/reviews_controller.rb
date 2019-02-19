class ReviewsController < ApplicationController
  def new
    @reservation = Reservation.find(params[:reservation_id])
    @review = Review.new
  end

  def create
    @reservation = Reservation.find(params[:reservation_id])
    @review = Review.new(review_params)
    @review.reservation = @reservation
    @review.save!
    redirect_to escort_path(@reservation.escort)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end