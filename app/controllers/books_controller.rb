class BooksController < ApplicationController

  def index
    @books = Book.all

  respond_to do |format|
      format.html
      format.text

      format.csv do
        render plain: @books.generate_csv(@books)


      format.json do
        render json: @books.map { |book|
          {
            title: book.title, #full_name: (whatever you want in place of name, home & creepiness)
            book_id: book.id,
            author: book.author, #can also say location:
            already_read: book.already_read
          }
        }
      end
      end
    end
  end
end
