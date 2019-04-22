require "application_system_test_case"

class PlatesTest < ApplicationSystemTestCase
  setup do
    @plate = plates(:one)
  end

  test "visiting the index" do
    visit plates_url
    assert_selector "h1", text: "Plates"
  end

  test "creating a Plate" do
    visit plates_url
    click_on "New Plate"

    fill_in "Cooktime", with: @plate.cooktime
    fill_in "Description", with: @plate.description
    fill_in "Price", with: @plate.price
    click_on "Create Plate"

    assert_text "Plate was successfully created"
    click_on "Back"
  end

  test "updating a Plate" do
    visit plates_url
    click_on "Edit", match: :first

    fill_in "Cooktime", with: @plate.cooktime
    fill_in "Description", with: @plate.description
    fill_in "Price", with: @plate.price
    click_on "Update Plate"

    assert_text "Plate was successfully updated"
    click_on "Back"
  end

  test "destroying a Plate" do
    visit plates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plate was successfully destroyed"
  end
end
