require 'test_helper'

class SregistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sregistration = sregistrations(:one)
  end

  test "should get index" do
    get sregistrations_url
    assert_response :success
  end

  test "should get new" do
    get new_sregistration_url
    assert_response :success
  end

  test "should create sregistration" do
    assert_difference('Sregistration.count') do
      post sregistrations_url, params: { sregistration: {  } }
    end

    assert_redirected_to sregistration_url(Sregistration.last)
  end

  test "should show sregistration" do
    get sregistration_url(@sregistration)
    assert_response :success
  end

  test "should get edit" do
    get edit_sregistration_url(@sregistration)
    assert_response :success
  end

  test "should update sregistration" do
    patch sregistration_url(@sregistration), params: { sregistration: {  } }
    assert_redirected_to sregistration_url(@sregistration)
  end

  test "should destroy sregistration" do
    assert_difference('Sregistration.count', -1) do
      delete sregistration_url(@sregistration)
    end

    assert_redirected_to sregistrations_url
  end
end
