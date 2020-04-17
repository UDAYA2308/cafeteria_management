require 'test_helper'

class StatusCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_code = status_codes(:one)
  end

  test "should get index" do
    get status_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_status_code_url
    assert_response :success
  end

  test "should create status_code" do
    assert_difference('StatusCode.count') do
      post status_codes_url, params: { status_code: { status: @status_code.status } }
    end

    assert_redirected_to status_code_url(StatusCode.last)
  end

  test "should show status_code" do
    get status_code_url(@status_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_code_url(@status_code)
    assert_response :success
  end

  test "should update status_code" do
    patch status_code_url(@status_code), params: { status_code: { status: @status_code.status } }
    assert_redirected_to status_code_url(@status_code)
  end

  test "should destroy status_code" do
    assert_difference('StatusCode.count', -1) do
      delete status_code_url(@status_code)
    end

    assert_redirected_to status_codes_url
  end
end
