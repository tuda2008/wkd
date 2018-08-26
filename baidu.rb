require 'net/http'
urls = ['https://www.gxboli.cn/customizes', 'https://www.gxboli.cn/products/6']
uri = URI.parse('http://data.zz.baidu.com/urls?site=https://www.gxboli.cn&token=GfjwDReE5w7xafu4')
req = Net::HTTP::Post.new(uri.request_uri)
req.body = urls.join("\n")
req.content_type = 'text/plain'
res = Net::HTTP.start(uri.hostname, uri.port) { |http| http.request(req) }
puts res.body