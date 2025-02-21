json.array! @products do |product|
  json.extract! product, :id, :name, :price
  json.photo_key product.photos.first.key
end
