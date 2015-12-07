require 'test_helper'

class LogsControllerTest < ActionController::TestCase
  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logs)
  end

  test "should create log" do
    assert_difference('Log.count') do
      post :create, log: { data: @log.data, end_time: @log.end_time, log_type_id: @log.log_type_id, start_time: @log.start_time }
    end

    assert_response 201
  end

  test "should show log" do
    get :show, id: @log
    assert_response :success
  end

  test "should update log" do
    put :update, id: @log, log: { data: @log.data, end_time: @log.end_time, log_type_id: @log.log_type_id, start_time: @log.start_time }
    assert_response 204
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete :destroy, id: @log
    end

    assert_response 204
  end
end
