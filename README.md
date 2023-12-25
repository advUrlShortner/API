# Advanced URL Shortner (AdvURLShortner) API

[![Software License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE.md)

Sshort urls with advanced options. Multiple domains, URL TTL, split tests, visit statistics etc.
 
## Features

- Easy to use
- Multiple domains
- Link TTL (Time-To-Live) in seconds
- Redirect to second URL after primary URL expires (TTL)
- Randomized and weighted randomnized redirect to different URLs (split tests etc.)
- Password-protected statistics of visits to a shortened URL
- Password protected shortened URL parameters (TTL, second URL, etc.)

## API endpoints
- advurlshortner.top
- illi.cfd
- illi.ink
- liii.pw

## Usage examples:

[c](https://github.com/advUrlShortner/API/tree/main/examples/c)
[clojure](https://github.com/advUrlShortner/API/tree/main/examples/clojure)
[csharp](https://github.com/advUrlShortner/API/tree/main/examples/csharp)
[go](https://github.com/advUrlShortner/API/tree/main/examples/go)
[http](https://github.com/advUrlShortner/API/tree/main/examples/http)
[java](https://github.com/advUrlShortner/API/tree/main/examples/java)
[javascript](https://github.com/advUrlShortner/API/tree/main/examples/javascript)
[kotlin](https://github.com/advUrlShortner/API/tree/main/examples/kotlin)
[nodejs](https://github.com/advUrlShortner/API/tree/main/examples/nodejs)
[objective-c](https://github.com/advUrlShortner/API/tree/main/examples/objective-c)
[ocaml](https://github.com/advUrlShortner/API/tree/main/examples/ocaml)
[php](https://github.com/advUrlShortner/API/tree/main/examples/php)
[powershell](https://github.com/advUrlShortner/API/tree/main/examples/powershell)
[python](https://github.com/advUrlShortner/API/tree/main/examples/python)
[r](https://github.com/advUrlShortner/API/tree/main/examples/r)
[ruby](https://github.com/advUrlShortner/API/tree/main/examples/ruby)
[sh](https://github.com/advUrlShortner/API/tree/main/examples/sh)
[swift](https://github.com/advUrlShortner/API/tree/main/examples/swift)

## API specification

### Getting new short URL

POST request to /newurl/ in JSON

#### Fields:

| Parameter | Description | Optional | Type |
| ------ | ------ | ------- | ------ |
| url | Primary URL | False | String |
| second_url | Secondary URL. For randomized output or after expiring primary URL (see ttl parameter) | True | String |
| ttl | Time-To-Live of primary URL. Will return "The Link You Followed Has Expired" after expiring or redirects to "second_url" if it is defined | True | Integer |
| weights | Only with second_url. Weights for randomized redirects. I.e [0.3,0.7]  approximately 30% to primary URL and 70% to secondary URL | True | Array of floats |
| pass | Password to to access visiting statistics and shortened URL parameters. | True | String |

### Getting short url parameters and visiting statistics
POST request to /stat/ in JSON

#### Fields:

| Parameter | Description | Optional | Type |
| ------ | ------ | ------- | ------ |
| short_url | short URL | False | String |
| pass | Password | False | String |

#### Return example:
```
{
	"url": "http://google.com/?z=1",
	"second_url": "http://yahoo.com/",
	"ttl": null,
	"date_created": "1703411470",
	"weights": null,
	"visits": 4,
	"primary_url_expired": false
}
```
