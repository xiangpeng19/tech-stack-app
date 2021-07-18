json.extract! trade, :id, :trade_type, :symbol, :open_price, :close_price, :open_date, :close_date, :created_at, :updated_at
json.url trade_url(trade, format: :json)
