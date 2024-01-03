#!/usr/bin/env zsh

project_name=influxdb-stack-environment

display_help() {
  echo "---------------------------------------------"
  echo "  Run Influxdata Stack"
  echo "---------------------------------------------"
  echo " Syntax: run-influxdata-stack.sh [command]"
  echo
  echo " ---command---"
  echo " help     Print help page"
  echo " start    Start Influxdata Stack (InfluxDB, Grafana, and Telegraf)"
  echo " stop     Stop Influxdata Stack"
  echo
}

case "$1" in
start)
  docker-compose -p $project_name -f ./environment/docker/influxdata-stack.yaml up
  ;;
stop)
  docker-compose -p $project_name -f ./environment/docker/influxdata-stack.yaml down
  ;;
help)
  display_help
  ;;
*)
  echo "Command cannot be accepted. Display help page."
  echo
  display_help
  ;;
esac
