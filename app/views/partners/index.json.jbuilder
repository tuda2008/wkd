json.carousels @carousels do |image|
  json.url request.host + image.url(:large)
end

json.partners @partners, :id, :title, :web_url