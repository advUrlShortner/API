require 'uri'
require 'net/http'

url = URI("http://illi.cfd/api/newurl/")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request.body = "{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}"

response = http.request(request)
puts response.read_body
