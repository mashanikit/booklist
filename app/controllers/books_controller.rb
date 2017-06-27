class BooksController < ApplicationController

  def index
    @books = Book.all

  respond_to do |format|
      format.html
      format.text

      format.json do
        render json: @books.map { |book|
          {
            title: book.title, #full_name: (whatever you want in place of name, home & creepiness)
            author: book.author, #can also say location:
            already_read: book.already_read
          }
      }
      end
  end
end
end
