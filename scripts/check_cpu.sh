CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'.' -f1)

if [ $CPU -gt 70 ]; then
  echo "High CPU detected: $CPU%"
else
  echo "CPU OK: $CPU%"
fi
