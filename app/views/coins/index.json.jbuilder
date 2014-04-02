json.array!(@coins) do |coin|
  json.extract! coin, :id, :name, :algorithm, :tag, :difficulty, :update_date
  json.url coin_url(coin, format: :json)
end
