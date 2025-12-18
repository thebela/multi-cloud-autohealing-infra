#!/bin/bash

while true
do
  echo "Running auto-heal cycle..."
  bash health_check.sh
  sleep 30
done

