require "application_system_test_case"

class SregistrationsTest < ApplicationSystemTestCase
  setup do
    @sregistration = sregistrations(:one)
  end

  test "visiting the index" do
    visit sregistrations_url
    assert_selector "h1", text: "Sregistrations"
  end

  test "creating a Sregistration" do
    visit sregistrations_url
    click_on "New Sregistration"

    click_on "Create Sregistration"

    assert_text "Sregistration was successfully created"
    click_on "Back"
  end

  test "updating a Sregistration" do
    visit sregistrations_url
    click_on "Edit", match: :first

    click_on "Update Sregistration"

    assert_text "Sregistration was successfully updated"
    click_on "Back"
  end

  test "destroying a Sregistration" do
    visit sregistrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sregistration was successfully destroyed"
  end
end
