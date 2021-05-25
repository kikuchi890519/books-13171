class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_book, only: [:edit, :show, :update, :destroy]
  before_action :redirect_root, only: [:edit, :update, :destroy]
 
  def index
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

  def edit
  end

  def update
    if @book.update(book_params)
       redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :publishing_company_id, :category_id, :summary, :output, :image).merge(user_id: current_user.id)
  end

  def redirect_root
    redirect_to root_path unless @book.user_id = current_user.id
  end

  def set_book
    @book = Book.find(params[:id])
  end

end