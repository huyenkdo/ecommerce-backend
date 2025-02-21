if @current_order
  json.order_items @order_items do |item|
    json.extract! item, :photo_key, :name, :quantity, :total_price
  end
  json.extract! @current_order, :total_price
else
  json.order_items []
  json.total_price 0
end
