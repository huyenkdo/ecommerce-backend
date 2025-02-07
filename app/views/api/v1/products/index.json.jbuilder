json.array! @products do |product|
  json.extract! product, :id, :name, :price
  json.photos product.photos do |photo|
    json.extract! photo, :key
  end
end
