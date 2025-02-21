json.array! @order_items do |item|
  json.extract! item, :photo_key, :name, :quantity, :total_price
json.extract! @current_order, :total_price
end
