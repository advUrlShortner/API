library(httr)

url <- "http://liil.bid/api/stat/"

payload <- "{\"short_url\":\"http://liil.bid/H\", \"pass\":\"aaa\"}"

encode <- "json"

response <- VERB("POST", url, body = payload, content_type("application/json"), encode = encode)

content(response, "text")
