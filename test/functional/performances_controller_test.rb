require 'test_helper'

class PerformancesControllerTest < ActionController::TestCase
  setup do
    @performance = performances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post :create, performance: { poet_id: @performance.poet_id, round_id: @performance.round_id, score1: @performance.score1, score2: @performance.score2, score3: @performance.score3, score4: @performance.score4, score5: @performance.score5 }
    end

    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should show performance" do
    get :show, id: @performance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance
    assert_response :success
  end

  test "should update performance" do
    put :update, id: @performance, performance: { poet_id: @performance.poet_id, round_id: @performance.round_id, score1: @performance.score1, score2: @performance.score2, score3: @performance.score3, score4: @performance.score4, score5: @performance.score5 }
    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete :destroy, id: @performance
    end

    assert_redirected_to performances_path
  end
end
