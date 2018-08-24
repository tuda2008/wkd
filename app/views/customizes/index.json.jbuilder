json.carousels @carousels do |image|
  json.url image.url(:large)
end

json.customize @customizes do |product|
  json.id product.id
  json.title product.title
  json.intro product.intro 
  if product.images.size > 0
    json.image product.images.first.url(:small)
  else
    json.image ""
  end
end