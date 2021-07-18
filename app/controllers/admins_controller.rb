
require "finnhub_ruby"

# admin controller
class AdminsController < ApplicationController
  FinnhubRuby.configure do |config|
    config.api_key["token"] = "c3psf32ad3ifkq8h5du0"
  end

  FINNHUB_CLIENT = FinnhubRuby::DefaultApi.new

  def index
    @users = User.all
    puts AdminsController::FINNHUB_CLIENT.quote("AAPL")
  end
end
