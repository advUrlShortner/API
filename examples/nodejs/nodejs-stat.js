const http = require("http");

const options = {
  "method": "POST",
  "hostname": "liil.bid",
  "port": null,
  "path": "/api/stat/",
  "headers": {
    "Content-Type": "application/json",
    "Content-Length": "47"
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

req.write(JSON.stringify({short_url: 'http://liil.bid/H', pass: 'aaa'}));
req.end();
