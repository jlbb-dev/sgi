require 'test_helper'

class RepairHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair_history = repair_histories(:one)
  end

  test "should get index" do
    get repair_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_history_url
    assert_response :success
  end

  test "should create repair_history" do
    assert_difference('RepairHistory.count') do
      post repair_histories_url, params: { repair_history: { area_id: @repair_history.area_id, date: @repair_history.date, observation: @repair_history.observation, pccode: @repair_history.pccode, repair_type_id: @repair_history.repair_type_id } }
    end

    assert_redirected_to repair_history_url(RepairHistory.last)
  end

  test "should show repair_history" do
    get repair_history_url(@repair_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_history_url(@repair_history)
    assert_response :success
  end

  test "should update repair_history" do
    patch repair_history_url(@repair_history), params: { repair_history: { area_id: @repair_history.area_id, date: @repair_history.date, observation: @repair_history.observation, pccode: @repair_history.pccode, repair_type_id: @repair_history.repair_type_id } }
    assert_redirected_to repair_history_url(@repair_history)
  end

  test "should destroy repair_history" do
    assert_difference('RepairHistory.count', -1) do
      delete repair_history_url(@repair_history)
    end

    assert_redirected_to repair_histories_url
  end
end
