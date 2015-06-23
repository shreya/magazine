require 'test_helper'

class MagazineBooksControllerTest < ActionController::TestCase
  setup do
    @magazine_book = magazine_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magazine_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magazine_book" do
    assert_difference('MagazineBook.count') do
      post :create, magazine_book: { title: @magazine_book.title }
    end

    assert_redirected_to magazine_book_path(assigns(:magazine_book))
  end

  test "should show magazine_book" do
    get :show, id: @magazine_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magazine_book
    assert_response :success
  end

  test "should update magazine_book" do
    patch :update, id: @magazine_book, magazine_book: { title: @magazine_book.title }
    assert_redirected_to magazine_book_path(assigns(:magazine_book))
  end

  test "should destroy magazine_book" do
    assert_difference('MagazineBook.count', -1) do
      delete :destroy, id: @magazine_book
    end

    assert_redirected_to magazine_books_path
  end
end
