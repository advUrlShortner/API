var client = new RestClient("http://liil.bid/api/stat/");
var request = new RestRequest(Method.POST);
request.AddHeader("Content-Type", "application/json");
request.AddParameter("application/json", "{\"short_url\":\"http://liil.bid/H\", \"pass\":\"aaa\"}", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
