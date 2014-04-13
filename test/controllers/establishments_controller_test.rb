require 'test_helper'

class EstablishmentsControllerTest < ActionController::TestCase
  setup do
    @establishment = establishments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:establishments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create establishment" do
    assert_difference('Establishment.count') do
      post :create, establishment: { address: @establishment.address, bar: @establishment.bar, checkin_id: @establishment.checkin_id, city: @establishment.city, description: @establishment.description, establishment_type_id: @establishment.establishment_type_id, facebook: @establishment.facebook, favorites_id: @establishment.favorites_id, following_id: @establishment.following_id, hours: @establishment.hours, location_id: @establishment.location_id, menu: @establishment.menu, name: @establishment.name, neighborhoods: @establishment.neighborhoods, phone: @establishment.phone, price: @establishment.price, rating: @establishment.rating, state: @establishment.state, user_id: @establishment.user_id, zip: @establishment.zip }
    end

    assert_redirected_to establishment_path(assigns(:establishment))
  end

  test "should show establishment" do
    get :show, id: @establishment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @establishment
    assert_response :success
  end

  test "should update establishment" do
    patch :update, id: @establishment, establishment: { address: @establishment.address, bar: @establishment.bar, checkin_id: @establishment.checkin_id, city: @establishment.city, description: @establishment.description, establishment_type_id: @establishment.establishment_type_id, facebook: @establishment.facebook, favorites_id: @establishment.favorites_id, following_id: @establishment.following_id, hours: @establishment.hours, location_id: @establishment.location_id, menu: @establishment.menu, name: @establishment.name, neighborhoods: @establishment.neighborhoods, phone: @establishment.phone, price: @establishment.price, rating: @establishment.rating, state: @establishment.state, user_id: @establishment.user_id, zip: @establishment.zip }
    assert_redirected_to establishment_path(assigns(:establishment))
  end

  test "should destroy establishment" do
    assert_difference('Establishment.count', -1) do
      delete :destroy, id: @establishment
    end

    assert_redirected_to establishments_path
  end
end
