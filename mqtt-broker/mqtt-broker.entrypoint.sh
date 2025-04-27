#!/bin/sh

echo "Generating mqtt-broker-config.yaml from template..."

# Replace placeholders {{USERNAME}} and {{PASSWORD}} using 'sed'
sed \
  -e "s|{{USERNAME}}|${MQTT_USERNAME}|g" \
  -e "s|{{PASSWORD}}|${MQTT_PASSWORD}|g" \
  /mqtt-broker-config.template.yaml > /config.yaml

# Now start the mochimqtt server
mochimqtt server /config.yaml
