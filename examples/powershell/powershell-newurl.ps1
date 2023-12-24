$headers=@{}
$headers.Add("Content-Type", "application/json")
$response = Invoke-WebRequest -Uri 'http://illi.cfd/api/newurl/' -Method POST -Headers $headers -ContentType 'application/json' -Body '{"url":"http://google.com/?z=1",  "second_url":"http://yahoo.com/", "pass":"aaa"}'
