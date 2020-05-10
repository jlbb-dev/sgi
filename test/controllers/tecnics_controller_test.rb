require 'test_helper'

class TecnicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tecnic = tecnics(:one)
  end

  test "should get index" do
    get tecnics_url
    assert_response :success
  end

  test "should get new" do
    get new_tecnic_url
    assert_response :success
  end

  test "should create tecnic" do
    assert_difference('Tecnic.count') do
      post tecnics_url, params: { tecnic: { name: @tecnic.name } }
    end

    assert_redirected_to tecnic_url(Tecnic.last)
  end

  test "should show tecnic" do
    get tecnic_url(@tecnic)
    assert_response :success
  end

  test "should get edit" do
    get edit_tecnic_url(@tecnic)
    assert_response :success
  end

  test "should update tecnic" do
    patch tecnic_url(@tecnic), params: { tecnic: { name: @tecnic.name } }
    assert_redirected_to tecnic_url(@tecnic)
  end

  test "should destroy tecnic" do
    assert_difference('Tecnic.count', -1) do
      delete tecnic_url(@tecnic)
    end

    assert_redirected_to tecnics_url
  end
end
