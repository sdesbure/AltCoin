json.array!(@coin_exchanges) do |coin_exchange|
  json.extract! coin_exchange, :id, :coin, :exchange, :price, :update_time, :url
  json.url coin_exchange_url(coin_exchange, format: :json)
end
