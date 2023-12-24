HttpResponse<String> response = Unirest.post("http://illi.cfd/api/newurl/")
  .header("Content-Type", "application/json")
  .body("{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}")
  .asString();
