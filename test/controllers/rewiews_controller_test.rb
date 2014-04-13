require 'test_helper'

class RewiewsControllerTest < ActionController::TestCase
  setup do
    @rewiew = rewiews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rewiews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rewiew" do
    assert_difference('Rewiew.count') do
      post :create, rewiew: { date: @rewiew.date, details: @rewiew.details, establishment_id: @rewiew.establishment_id, helpful: @rewiew.helpful, rating: @rewiew.rating, title: @rewiew.title, user_id: @rewiew.user_id }
    end

    assert_redirected_to rewiew_path(assigns(:rewiew))
  end

  test "should show rewiew" do
    get :show, id: @rewiew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rewiew
    assert_response :success
  end

  test "should update rewiew" do
    patch :update, id: @rewiew, rewiew: { date: @rewiew.date, details: @rewiew.details, establishment_id: @rewiew.establishment_id, helpful: @rewiew.helpful, rating: @rewiew.rating, title: @rewiew.title, user_id: @rewiew.user_id }
    assert_redirected_to rewiew_path(assigns(:rewiew))
  end

  test "should destroy rewiew" do
    assert_difference('Rewiew.count', -1) do
      delete :destroy, id: @rewiew
    end

    assert_redirected_to rewiews_path
  end
end
