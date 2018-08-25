json.current_product do
  json.id @product.id
  json.title @product.title
  json.intro @product.intro
  json.description raw(@product.description)
  json.images @product.images do |image|
	  json.url request.protocol + request.host + image.url(:large)
  end
end

json.products @hot_products do |product|
  json.id product.id
  json.title product.title
  json.intro product.intro 
  if product.images.size > 0
    json.image request.protocol + request.host + product.images.first.url(:small)
  else
    json.image ""
  end
end