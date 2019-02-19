class ReviewsController < ApplicationController
  def new
    @escort = Escort.find(params[:escort_id])
    @review = Review.new
  end

  def create
    @escort = Escort.find(params[:escort_id])
    @review = Review.new(review_params)
    @review.reservation.escort = @escort
    @review.save!
    redirect_to escort_path(@escort)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, )
  end
end
