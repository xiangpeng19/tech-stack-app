require "test_helper"

class TradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade = trades(:one)
  end

  test "should get index" do
    get trades_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_url
    assert_response :success
  end

  test "should create trade" do
    assert_difference('Trade.count') do
      post trades_url, params: { trade: { close_date: @trade.close_date, close_price: @trade.close_price, open_date: @trade.open_date, open_price: @trade.open_price, symbol: @trade.symbol, trade_type: @trade.trade_type } }
    end

    assert_redirected_to trade_url(Trade.last)
  end

  test "should show trade" do
    get trade_url(@trade)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_url(@trade)
    assert_response :success
  end

  test "should update trade" do
    patch trade_url(@trade), params: { trade: { close_date: @trade.close_date, close_price: @trade.close_price, open_date: @trade.open_date, open_price: @trade.open_price, symbol: @trade.symbol, trade_type: @trade.trade_type } }
    assert_redirected_to trade_url(@trade)
  end

  test "should destroy trade" do
    assert_difference('Trade.count', -1) do
      delete trade_url(@trade)
    end

    assert_redirected_to trades_url
  end
end
