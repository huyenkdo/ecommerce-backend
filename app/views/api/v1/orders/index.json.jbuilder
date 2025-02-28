json.array! @orders do |order|
  json.user_first_name order.user.first_name
  json.user_last_name order.user.last_name
  json.item_nb order.order_items.size
  json.extract! order, :id, :updated_at, :total_price
end
