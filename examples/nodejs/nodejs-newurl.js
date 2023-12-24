const http = require("http");

const options = {
  "method": "POST",
  "hostname": "illi.cfd",
  "port": null,
  "path": "/api/newurl/",
  "headers": {
    "Content-Type": "application/json",
    "Content-Length": "81"
  }
};

const req = http.request(options, function (res) {
  const chunks = [];

  res.on("data", function (chunk) {
    chunks.push(chunk);
  });

  res.on("end", function () {
    const body = Buffer.concat(chunks);
    console.log(body.toString());
  });
});

req.write(JSON.stringify({url: 'http://google.com/?z=1', second_url: 'http://yahoo.com/', pass: 'aaa'}));
req.end();
