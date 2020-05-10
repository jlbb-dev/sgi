require "application_system_test_case"

class RepairHistoriesTest < ApplicationSystemTestCase
  setup do
    @repair_history = repair_histories(:one)
  end

  test "visiting the index" do
    visit repair_histories_url
    assert_selector "h1", text: "Repair Histories"
  end

  test "creating a Repair history" do
    visit repair_histories_url
    click_on "New Repair History"

    fill_in "Area", with: @repair_history.area_id
    fill_in "Date", with: @repair_history.date
    fill_in "Observation", with: @repair_history.observation
    fill_in "Pccode", with: @repair_history.pccode
    fill_in "Repair type", with: @repair_history.repair_type_id
    click_on "Create Repair history"

    assert_text "Repair history was successfully created"
    click_on "Back"
  end

  test "updating a Repair history" do
    visit repair_histories_url
    click_on "Edit", match: :first

    fill_in "Area", with: @repair_history.area_id
    fill_in "Date", with: @repair_history.date
    fill_in "Observation", with: @repair_history.observation
    fill_in "Pccode", with: @repair_history.pccode
    fill_in "Repair type", with: @repair_history.repair_type_id
    click_on "Update Repair history"

    assert_text "Repair history was successfully updated"
    click_on "Back"
  end

  test "destroying a Repair history" do
    visit repair_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repair history was successfully destroyed"
  end
end
