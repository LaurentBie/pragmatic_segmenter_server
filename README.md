# Pragmatic Segmenter Server
[Pragmatic Segmenter](https://github.com/diasks2/pragmatic_segmenter) is a sentence segmentation tool written in Ruby by Kevin Dias. This is a simple API to use it

## Install with docker
Clone or download the repository
```
$ cd pragmatic_segmenter_server
$ sudo docker build -t pss .
```
## Usage
First, run the docker

```
$ sudo docker run -d -p 8500:8500  pss
```

and then use curl
```
curl -X POST  http://0.0.0.0:8500/segment \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{ "text": "Je m'\''appelle Laurent. J'\''habite aux U.S.A. a New York.", "lang": "fr" }'
```
