class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    pp "*********************"
    pp @reviews
    pp "*********************"
  end

end
