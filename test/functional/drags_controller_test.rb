require 'test_helper'

class DragsControllerTest < ActionController::TestCase
  setup do
    @drag = drags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drag" do
    assert_difference('Drag.count') do
      post :create, :drag => @drag.attributes
    end

    assert_redirected_to drag_path(assigns(:drag))
  end

  test "should show drag" do
    get :show, :id => @drag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @drag.to_param
    assert_response :success
  end

  test "should update drag" do
    put :update, :id => @drag.to_param, :drag => @drag.attributes
    assert_redirected_to drag_path(assigns(:drag))
  end

  test "should destroy drag" do
    assert_difference('Drag.count', -1) do
      delete :destroy, :id => @drag.to_param
    end

    assert_redirected_to drags_path
  end
end
