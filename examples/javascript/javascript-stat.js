const data = JSON.stringify({
  "short_url": "http://liil.bid/H",
  "pass": "aaa"
});

const xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "http://liil.bid/api/stat/");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
