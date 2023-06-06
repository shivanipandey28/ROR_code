require "test_helper"

class UserrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userr = userrs(:one)
  end

  test "should get index" do
    get userrs_url
    assert_response :success
  end

  test "should get new" do
    get new_userr_url
    assert_response :success
  end

  test "should create userr" do
    assert_difference("Userr.count") do
      post userrs_url, params: { userr: { email: @userr.email, login: @userr.login, name: @userr.name } }
    end

    assert_redirected_to userr_url(Userr.last)
  end

  test "should show userr" do
    get userr_url(@userr)
    assert_response :success
  end

  test "should get edit" do
    get edit_userr_url(@userr)
    assert_response :success
  end

  test "should update userr" do
    patch userr_url(@userr), params: { userr: { email: @userr.email, login: @userr.login, name: @userr.name } }
    assert_redirected_to userr_url(@userr)
  end

  test "should destroy userr" do
    assert_difference("Userr.count", -1) do
      delete userr_url(@userr)
    end

    assert_redirected_to userrs_url
  end
end
