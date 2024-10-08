class ReviewsController < ApplicationController
  def create
    @car = car.find(params[:car_id])
    @review = review.new(review_params)
    @review.car = @car
    # @review.car_id = @car.id
    if @review.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
