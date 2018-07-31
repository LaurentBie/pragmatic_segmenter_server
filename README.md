# Pragmatic Segmenter Server
[Pragmatic Segmenter] (https://github.com/diasks2/pragmatic_segmenter) is a sentence segmentation tool written in Ruby. This

```
curl -X POST  http://0.0.0.0:8500/segment \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{ "text": "Je m'\''appelle Laurent.", "lang": "fr" }'
```
