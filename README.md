# Kibana4
A docker image to run [Kibana 4](https://www.elastic.co/products/kibana). No more, no less. Takes a single variable that points towards your elasticsearch host (ES_URL)

# Example Usage
```
docker run -d -p 5601:5601 -e ES_URL='http://your.url.here:9200/' mikew/kibana4
```
