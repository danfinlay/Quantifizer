require 'test_helper'

class LogTypesControllerTest < ActionController::TestCase
  setup do
    @log_type = log_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_types)
  end

  test "should create log_type" do
    assert_difference('LogType.count') do
      post :create, log_type: { description: @log_type.description, title: @log_type.title }
    end

    assert_response 201
  end

  test "should show log_type" do
    get :show, id: @log_type
    assert_response :success
  end

  test "should update log_type" do
    put :update, id: @log_type, log_type: { description: @log_type.description, title: @log_type.title }
    assert_response 204
  end

  test "should destroy log_type" do
    assert_difference('LogType.count', -1) do
      delete :destroy, id: @log_type
    end

    assert_response 204
  end
end
