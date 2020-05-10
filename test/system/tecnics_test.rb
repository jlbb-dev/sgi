require "application_system_test_case"

class TecnicsTest < ApplicationSystemTestCase
  setup do
    @tecnic = tecnics(:one)
  end

  test "visiting the index" do
    visit tecnics_url
    assert_selector "h1", text: "Tecnics"
  end

  test "creating a Tecnic" do
    visit tecnics_url
    click_on "New Tecnic"

    fill_in "Name", with: @tecnic.name
    click_on "Create Tecnic"

    assert_text "Tecnic was successfully created"
    click_on "Back"
  end

  test "updating a Tecnic" do
    visit tecnics_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tecnic.name
    click_on "Update Tecnic"

    assert_text "Tecnic was successfully updated"
    click_on "Back"
  end

  test "destroying a Tecnic" do
    visit tecnics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tecnic was successfully destroyed"
  end
end
