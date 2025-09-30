#!/bin/bash

# The purpose of this script is to allow users check the reachability of a website
# Simple script to fetch HTTP headers and status code

# Ask user for a website
read -p "Enter website (e.g., google.com or https://google.com): " SITE

# Add https:// if not present
if [[ ! "$SITE" =~ ^https?:// ]]; then
  URL="https://$SITE"
else
  URL="$SITE"
fi

echo
echo "===== Fetching HTTP Headers for $URL ====="
curl -s -I "$URL"

echo
echo "===== HTTP Status Code ====="
curl -s -o /dev/null -w "%{http_code}\n" "$URL"

