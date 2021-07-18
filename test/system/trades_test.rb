require "application_system_test_case"

class TradesTest < ApplicationSystemTestCase
  setup do
    @trade = trades(:one)
  end

  test "visiting the index" do
    visit trades_url
    assert_selector "h1", text: "Trades"
  end

  test "creating a Trade" do
    visit trades_url
    click_on "New Trade"

    fill_in "Close date", with: @trade.close_date
    fill_in "Close price", with: @trade.close_price
    fill_in "Open date", with: @trade.open_date
    fill_in "Open price", with: @trade.open_price
    fill_in "Symbol", with: @trade.symbol
    fill_in "Trade type", with: @trade.trade_type
    click_on "Create Trade"

    assert_text "Trade was successfully created"
    click_on "Back"
  end

  test "updating a Trade" do
    visit trades_url
    click_on "Edit", match: :first

    fill_in "Close date", with: @trade.close_date
    fill_in "Close price", with: @trade.close_price
    fill_in "Open date", with: @trade.open_date
    fill_in "Open price", with: @trade.open_price
    fill_in "Symbol", with: @trade.symbol
    fill_in "Trade type", with: @trade.trade_type
    click_on "Update Trade"

    assert_text "Trade was successfully updated"
    click_on "Back"
  end

  test "destroying a Trade" do
    visit trades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trade was successfully destroyed"
  end
end
