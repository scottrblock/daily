require 'test_helper'

class ActivitySetsControllerTest < ActionController::TestCase
  setup do
    @activity_set = activity_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_set" do
    assert_difference('ActivitySet.count') do
      post :create, activity_set: {  }
    end

    assert_redirected_to activity_set_path(assigns(:activity_set))
  end

  test "should show activity_set" do
    get :show, id: @activity_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_set
    assert_response :success
  end

  test "should update activity_set" do
    put :update, id: @activity_set, activity_set: {  }
    assert_redirected_to activity_set_path(assigns(:activity_set))
  end

  test "should destroy activity_set" do
    assert_difference('ActivitySet.count', -1) do
      delete :destroy, id: @activity_set
    end

    assert_redirected_to activity_sets_path
  end
end
