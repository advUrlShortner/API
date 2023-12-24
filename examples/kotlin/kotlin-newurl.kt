val client = OkHttpClient()

val mediaType = MediaType.parse("application/json")
val body = RequestBody.create(mediaType, "{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}")
val request = Request.Builder()
  .url("http://illi.cfd/api/newurl/")
  .post(body)
  .addHeader("Content-Type", "application/json")
  .build()

val response = client.newCall(request).execute()
