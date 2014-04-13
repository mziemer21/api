require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal" do
    assert_difference('Deal.count') do
      post :create, deal: { day: @deal.day, deal_type_id: @deal.deal_type_id, down_votes: @deal.down_votes, end_date: @deal.end_date, establishment_id: @deal.establishment_id, restrictions: @deal.restrictions, start_date: @deal.start_date, time_end: @deal.time_end, time_start: @deal.time_start, title: @deal.title, title: @deal.title, up_votes: @deal.up_votes, user_id: @deal.user_id }
    end

    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should show deal" do
    get :show, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should update deal" do
    patch :update, id: @deal, deal: { day: @deal.day, deal_type_id: @deal.deal_type_id, down_votes: @deal.down_votes, end_date: @deal.end_date, establishment_id: @deal.establishment_id, restrictions: @deal.restrictions, start_date: @deal.start_date, time_end: @deal.time_end, time_start: @deal.time_start, title: @deal.title, title: @deal.title, up_votes: @deal.up_votes, user_id: @deal.user_id }
    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should destroy deal" do
    assert_difference('Deal.count', -1) do
      delete :destroy, id: @deal
    end

    assert_redirected_to deals_path
  end
end
