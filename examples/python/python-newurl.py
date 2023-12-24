import http.client

conn = http.client.HTTPConnection("illi.cfd")

payload = "{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}"

headers = {
    'Content-Type': "application/json"
    }

conn.request("POST", "/api/newurl/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
