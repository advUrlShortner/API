var client = new RestClient("http://illi.cfd/api/newurl/");
var request = new RestRequest(Method.POST);
request.AddHeader("Content-Type", "application/json");
request.AddParameter("application/json", "{\"url\":\"http://google.com/?z=1\",  \"second_url\":\"http://yahoo.com/\", \"pass\":\"aaa\"}", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
