class BooksController < ApplicationController
before_action :authenticate_user!, only: [:new]
 
  def index
    @books = Book.all
    @books = Book.order('created_at DESC')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to root_path
    else
    render :new
    end
  end

  def show
  end

  def book_params
    params.require(:book).permit(:title, :author, :publishing_company_id, :category_id, :summary, :output, :image).merge(user_id: current_user.id)
  end
end