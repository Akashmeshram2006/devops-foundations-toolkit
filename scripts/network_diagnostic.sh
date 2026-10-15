
#!/bin/bash

# DevOps Foundations Toolkit - Network Diagnostic

echo "=================================="
echo "      NETWORK DIAGNOSTIC"
echo "=================================="

echo ""
echo "1. Local IP Address:"
hostname -I

echo ""
echo "2. Default Gateway:"
ip route | awk '/default/ {print $3; exit}'

echo ""
echo "3. DNS Resolution:"
if getent hosts google.com > /dev/null; then
    echo "DNS resolution: SUCCESS"
else
    echo "DNS resolution: FAILED"
fi

echo ""
echo "4. Internet Connectivity:"
if curl -s --connect-timeout 5 -o /dev/null https://google.com; then
    echo "HTTPS connection: SUCCESS"
else
    echo "HTTPS connection: FAILED"
fi

echo ""
echo "5. HTTPS Status Code:"
curl -s -o /dev/null -w "%{http_code}\n" \
    --connect-timeout 5 https://google.com

echo ""
echo "Network diagnostic completed."

