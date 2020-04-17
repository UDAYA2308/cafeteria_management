require "application_system_test_case"

class StatusCodesTest < ApplicationSystemTestCase
  setup do
    @status_code = status_codes(:one)
  end

  test "visiting the index" do
    visit status_codes_url
    assert_selector "h1", text: "Status Codes"
  end

  test "creating a Status code" do
    visit status_codes_url
    click_on "New Status Code"

    fill_in "Status", with: @status_code.status
    click_on "Create Status code"

    assert_text "Status code was successfully created"
    click_on "Back"
  end

  test "updating a Status code" do
    visit status_codes_url
    click_on "Edit", match: :first

    fill_in "Status", with: @status_code.status
    click_on "Update Status code"

    assert_text "Status code was successfully updated"
    click_on "Back"
  end

  test "destroying a Status code" do
    visit status_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status code was successfully destroyed"
  end
end
