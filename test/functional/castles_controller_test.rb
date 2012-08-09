require 'test_helper'

class CastlesControllerTest < ActionController::TestCase
  setup do
    @castle = castles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create castle" do
    assert_difference('Castle.count') do
      post :create, castle: { castle_link: @castle.castle_link, castle_name: @castle.castle_name, castle_status: @castle.castle_status, reservation_date: @castle.reservation_date, user_id: @castle.user_id }
    end

    assert_redirected_to castle_path(assigns(:castle))
  end

  test "should show castle" do
    get :show, id: @castle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @castle
    assert_response :success
  end

  test "should update castle" do
    put :update, id: @castle, castle: { castle_link: @castle.castle_link, castle_name: @castle.castle_name, castle_status: @castle.castle_status, reservation_date: @castle.reservation_date, user_id: @castle.user_id }
    assert_redirected_to castle_path(assigns(:castle))
  end

  test "should destroy castle" do
    assert_difference('Castle.count', -1) do
      delete :destroy, id: @castle
    end

    assert_redirected_to castles_path
  end
end
