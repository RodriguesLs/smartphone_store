require "application_system_test_case"

class SellsTest < ApplicationSystemTestCase
  setup do
    @sell = sells(:one)
  end

  test "visiting the index" do
    visit sells_url
    assert_selector "h1", text: "Sells"
  end

  test "creating a Sell" do
    visit sells_url
    click_on "New Sell"

    fill_in "Date", with: @sell.date
    fill_in "Product", with: @sell.product_id
    click_on "Create Sell"

    assert_text "Sell was successfully created"
    click_on "Back"
  end

  test "updating a Sell" do
    visit sells_url
    click_on "Edit", match: :first

    fill_in "Date", with: @sell.date
    fill_in "Product", with: @sell.product_id
    click_on "Update Sell"

    assert_text "Sell was successfully updated"
    click_on "Back"
  end

  test "destroying a Sell" do
    visit sells_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sell was successfully destroyed"
  end
end
