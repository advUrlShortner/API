require 'uri'
require 'net/http'

url = URI("http://liil.bid/api/stat/")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request.body = "{\"short_url\":\"http://liil.bid/H\", \"pass\":\"aaa\"}"

response = http.request(request)
puts response.read_body
