const data = JSON.stringify({
  "url": "http://google.com/?z=1",
  "second_url": "http://yahoo.com/",
  "pass": "aaa"
});

const xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "http://illi.cfd/api/newurl/");
xhr.setRequestHeader("Content-Type", "application/json");

xhr.send(data);
