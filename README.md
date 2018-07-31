# Pragmatic Segmenter Server
[Pragmatic Segmenter](https://github.com/diasks2/pragmatic_segmenter) is a sentence segmentation tool written in Ruby. This software define an API to useit

## Install with docker
Clone or download the repository
```
$ cd pragmatic_segmenter_server
$ sudo docker build -t pss .
```
## Usage
First, run the docker

```
$ cd pragmatic_segmenter_server
$ sudo docker build -t pss .
```

and then use curl
```
curl -X POST  http://0.0.0.0:8500/segment \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{ "text": "Je m'\''appelle Laurent.", "lang": "fr" }'
```
