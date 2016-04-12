require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit
    assert_response :success
  end

  test "should get delete" do
    skip
    get :delete
    assert_response :success
  end

  test "should get update" do
    skip
    get :update
    assert_response :success
  end

  test "should get create" do
    skip
    get :create
    assert_response :success
  end

end
