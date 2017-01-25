class ReviewsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
  end
end
