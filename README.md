# Pragmatic Segmenter Server
Pragmatic Segmenter as a Service


curl -X POST  http://0.0.0.0:8500/segment \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{ "text": "Je m'\''appelle Laurent.", "lang": "fr" }'
