require "finnhub_ruby"

module FinnhubHelper
  FinnhubRuby.configure do |config|
    config.api_key["token"] = "c3psf32ad3ifkq8h5du0"
  end

  @@finnhub_client = FinnhubRuby::DefaultApi.new
end
