#!/bin/bash

URL="http://localhost"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ $STATUS -ne 200 ]; then
  echo "Health Check Failed ❌"
  bash restart_service.sh
else
  echo "Health Check Passed ✔"
fi
