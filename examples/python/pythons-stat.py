import http.client

conn = http.client.HTTPConnection("illi.cfd")

payload = '{"short_url":"http://illi.cfd/H", "pass":"aaa"}'

headers = {
    'Content-Type': "application/json"
    }

conn.request("POST", "/api/stat/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
