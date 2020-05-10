require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "creating a Service" do
    visit services_url
    click_on "New Service"

    fill_in "Area", with: @service.area_id
    fill_in "Date", with: @service.date
    fill_in "Service area", with: @service.service_area_id
    fill_in "Service mode", with: @service.service_mode_id
    fill_in "Service type", with: @service.service_type_id
    fill_in "Tecnic", with: @service.tecnic_id
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "updating a Service" do
    visit services_url
    click_on "Edit", match: :first

    fill_in "Area", with: @service.area_id
    fill_in "Date", with: @service.date
    fill_in "Service area", with: @service.service_area_id
    fill_in "Service mode", with: @service.service_mode_id
    fill_in "Service type", with: @service.service_type_id
    fill_in "Tecnic", with: @service.tecnic_id
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "destroying a Service" do
    visit services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service was successfully destroyed"
  end
end
