class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @granny = Granny.find(params[:granny_id])
    @review = Review.new
  end

  def create
    @granny = Granny.find(params[:granny_id])
    @review = Review.new(review_params)
    @review.granny = @granny
    @review.save
    redirect_to granny_path(@granny)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
