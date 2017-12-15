class BooksController < ApplicationController
  def index
    @books = Book.all

    respond_to do |format|
      format.json do
        render json: { books: @books }
      end

      format.html do
        render :index
      end

      format.text do
        render :index
      end

      format.csv do
        render plain: Book.generate_csv(@books)
      end
    end
  end
end
