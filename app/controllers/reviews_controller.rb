class ReviewsController < ApplicationController
  before_action :load_location

  def new
    @review = Review.new
    # @location = Location.find(params[:location_id])
  end

  def create
    @review = @location.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to location_path(@location.id)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating)
  end

  def load_location
    @location = Location.find(params[:location_id])
  end
end
