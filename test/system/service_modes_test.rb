require "application_system_test_case"

class ServiceModesTest < ApplicationSystemTestCase
  setup do
    @service_mode = service_modes(:one)
  end

  test "visiting the index" do
    visit service_modes_url
    assert_selector "h1", text: "Service Modes"
  end

  test "creating a Service mode" do
    visit service_modes_url
    click_on "New Service Mode"

    fill_in "Name", with: @service_mode.name
    click_on "Create Service mode"

    assert_text "Service mode was successfully created"
    click_on "Back"
  end

  test "updating a Service mode" do
    visit service_modes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @service_mode.name
    click_on "Update Service mode"

    assert_text "Service mode was successfully updated"
    click_on "Back"
  end

  test "destroying a Service mode" do
    visit service_modes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service mode was successfully destroyed"
  end
end
