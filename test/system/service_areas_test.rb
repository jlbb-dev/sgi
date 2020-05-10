require "application_system_test_case"

class ServiceAreasTest < ApplicationSystemTestCase
  setup do
    @service_area = service_areas(:one)
  end

  test "visiting the index" do
    visit service_areas_url
    assert_selector "h1", text: "Service Areas"
  end

  test "creating a Service area" do
    visit service_areas_url
    click_on "New Service Area"

    fill_in "Name", with: @service_area.name
    click_on "Create Service area"

    assert_text "Service area was successfully created"
    click_on "Back"
  end

  test "updating a Service area" do
    visit service_areas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @service_area.name
    click_on "Update Service area"

    assert_text "Service area was successfully updated"
    click_on "Back"
  end

  test "destroying a Service area" do
    visit service_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service area was successfully destroyed"
  end
end
