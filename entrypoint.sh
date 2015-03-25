#!/bin/sh

if [[ -z $ES_URL ]]; then echo "ES_URL var is not set"; exit 1; fi

# Replace elasticsearch_url
sed -i "s*elasticsearch_url: \"http://localhost:9200\"*elasticsearch_url: \"${ES_URL}\"*" /opt/kibana/config/kibana.yml

exec /opt/kibana/bin/kibana $@
