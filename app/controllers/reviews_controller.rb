class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    # これがないとバリデーションエラー時に@bookの情報を失う
    # つまりbook.titleなどがとれなくなる
    @book = Book.find(params[:book_id])

    @review = Review.new(
      body: review_params[:body],
      user_id: current_user.id,
      book_id: params[:book_id]
    )

    if @review.save
      redirect_to book_path(@review.book)
    else
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:body, :user_id, :book_id)
    end
end
