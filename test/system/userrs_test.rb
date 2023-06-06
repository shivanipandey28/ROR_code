require "application_system_test_case"

class UserrsTest < ApplicationSystemTestCase
  setup do
    @userr = userrs(:one)
  end

  test "visiting the index" do
    visit userrs_url
    assert_selector "h1", text: "Userrs"
  end

  test "should create userr" do
    visit userrs_url
    click_on "New userr"

    fill_in "Email", with: @userr.email
    fill_in "Login", with: @userr.login
    fill_in "Name", with: @userr.name
    click_on "Create Userr"

    assert_text "Userr was successfully created"
    click_on "Back"
  end

  test "should update Userr" do
    visit userr_url(@userr)
    click_on "Edit this userr", match: :first

    fill_in "Email", with: @userr.email
    fill_in "Login", with: @userr.login
    fill_in "Name", with: @userr.name
    click_on "Update Userr"

    assert_text "Userr was successfully updated"
    click_on "Back"
  end

  test "should destroy Userr" do
    visit userr_url(@userr)
    click_on "Destroy this userr", match: :first

    assert_text "Userr was successfully destroyed"
  end
end
