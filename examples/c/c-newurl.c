CURL *hnd = curl_easy_init();

curl_easy_setopt(hnd, CURLOPT_CUSTOMREQUEST, "POST");
curl_easy_setopt(hnd, CURLOPT_URL, "http://liil.bid/api/newurl/");

struct curl_slist *headers = NULL;
headers = curl_slist_append(headers, "Content-Type: application/json");
curl_easy_setopt(hnd, CURLOPT_HTTPHEADER, headers);

curl_easy_setopt(hnd, CURLOPT_POSTFIELDS, "{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}");

CURLcode ret = curl_easy_perform(hnd);
