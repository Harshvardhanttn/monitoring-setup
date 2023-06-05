#!/bin/bash

# Prompt the user for inputs
read -p "Enter name: " name
read -p "Enter URL for CloudWatch: " cdurl
read -p "Enter URL for InfluxDB: " ifxurl

# Install Helm chart
helm install --set "grafana.sidecar.datasources.cloudwatch.url=$cdurl"  --set "grafana.sidecar.datasources.influxdb.url=$ifxurl" "$name" ./
