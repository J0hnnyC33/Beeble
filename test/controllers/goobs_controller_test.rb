require 'test_helper'

class GoobsControllerTest < ActionController::TestCase
  setup do
    @goob = goobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goob" do
    assert_difference('Goob.count') do
      post :create, goob: { description: @goob.description }
    end

    assert_redirected_to goob_path(assigns(:goob))
  end

  test "should show goob" do
    get :show, id: @goob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goob
    assert_response :success
  end

  test "should update goob" do
    patch :update, id: @goob, goob: { description: @goob.description }
    assert_redirected_to goob_path(assigns(:goob))
  end

  test "should destroy goob" do
    assert_difference('Goob.count', -1) do
      delete :destroy, id: @goob
    end

    assert_redirected_to goobs_path
  end
end
