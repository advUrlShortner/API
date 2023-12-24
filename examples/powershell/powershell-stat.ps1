$headers=@{}
$headers.Add("Content-Type", "application/json")
$response = Invoke-WebRequest -Uri 'http://liil.bid/api/stat/' -Method POST -Headers $headers -ContentType 'application/json' -Body '{"short_url":"http://liil.bid/H", "pass":"aaa"}'
