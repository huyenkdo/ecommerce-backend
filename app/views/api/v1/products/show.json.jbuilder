json.extract! @product, :id, :name, :description, :price
json.photos @product.photos do |photo|
  json.extract! photo, :key
end
