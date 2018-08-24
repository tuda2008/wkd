json.carousels @carousels do |image|
  json.url image.url(:large)
end

json.products @products do |product|
  json.id product.id
  json.title product.title
  json.intro product.intro 
  json.images product.images do |image|
    image.url(:small)
  end
end

json.customize @customizes do |product|
  json.id product.id
  json.title product.title
  json.intro product.intro 
  json.images product.images do |image|
    json.url image.url(:small)
  end
end

json.partners @partners, :id, :title, :web_url