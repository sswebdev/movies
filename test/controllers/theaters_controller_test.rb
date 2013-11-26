require 'test_helper'

class TheatersControllerTest < ActionController::TestCase
  setup do
    @theater = theaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theater" do
    assert_difference('Theater.count') do
      post :create, theater: { address: @theater.address, hours: @theater.hours, name: @theater.name }
    end

    assert_redirected_to theater_path(assigns(:theater))
  end

  test "should show theater" do
    get :show, id: @theater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theater
    assert_response :success
  end

  test "should update theater" do
    patch :update, id: @theater, theater: { address: @theater.address, hours: @theater.hours, name: @theater.name }
    assert_redirected_to theater_path(assigns(:theater))
  end

  test "should destroy theater" do
    assert_difference('Theater.count', -1) do
      delete :destroy, id: @theater
    end

    assert_redirected_to theaters_path
  end
end
