require 'test_helper'

class ServiceModesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_mode = service_modes(:one)
  end

  test "should get index" do
    get service_modes_url
    assert_response :success
  end

  test "should get new" do
    get new_service_mode_url
    assert_response :success
  end

  test "should create service_mode" do
    assert_difference('ServiceMode.count') do
      post service_modes_url, params: { service_mode: { name: @service_mode.name } }
    end

    assert_redirected_to service_mode_url(ServiceMode.last)
  end

  test "should show service_mode" do
    get service_mode_url(@service_mode)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_mode_url(@service_mode)
    assert_response :success
  end

  test "should update service_mode" do
    patch service_mode_url(@service_mode), params: { service_mode: { name: @service_mode.name } }
    assert_redirected_to service_mode_url(@service_mode)
  end

  test "should destroy service_mode" do
    assert_difference('ServiceMode.count', -1) do
      delete service_mode_url(@service_mode)
    end

    assert_redirected_to service_modes_url
  end
end
