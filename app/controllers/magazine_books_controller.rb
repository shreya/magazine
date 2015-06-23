class MagazineBooksController < ApplicationController
  before_action :set_magazine_book, only: [:show, :edit, :update, :destroy]

  # GET /magazine_books
  # GET /magazine_books.json
  def index
    @magazine_books = MagazineBook.all
  end

  # GET /magazine_books/1
  # GET /magazine_books/1.json
  def show
  end

  # GET /magazine_books/new
  def new
    @magazine_book = MagazineBook.new
  end

  # GET /magazine_books/1/edit
  def edit
  end

  # POST /magazine_books
  # POST /magazine_books.json
  def create
    @magazine_book = MagazineBook.new(magazine_book_params)

    respond_to do |format|
      if @magazine_book.save
        format.html { redirect_to @magazine_book, notice: 'Magazine book was successfully created.' }
        format.json { render :show, status: :created, location: @magazine_book }
      else
        format.html { render :new }
        format.json { render json: @magazine_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magazine_books/1
  # PATCH/PUT /magazine_books/1.json
  def update
    respond_to do |format|
      if @magazine_book.update(magazine_book_params)
        format.html { redirect_to @magazine_book, notice: 'Magazine book was successfully updated.' }
        format.json { render :show, status: :ok, location: @magazine_book }
      else
        format.html { render :edit }
        format.json { render json: @magazine_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magazine_books/1
  # DELETE /magazine_books/1.json
  def destroy
    @magazine_book.destroy
    respond_to do |format|
      format.html { redirect_to magazine_books_url, notice: 'Magazine book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magazine_book
      @magazine_book = MagazineBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magazine_book_params
      params.require(:magazine_book).permit(:title)
    end
end
