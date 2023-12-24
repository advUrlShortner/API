val client = OkHttpClient()

val mediaType = MediaType.parse("application/json")
val body = RequestBody.create(mediaType, "{\"short_url\":\"http://liil.bid/H\", \"pass\":\"aaa\"}")
val request = Request.Builder()
  .url("http://liil.bid/api/stat/")
  .post(body)
  .addHeader("Content-Type", "application/json")
  .build()

val response = client.newCall(request).execute()
