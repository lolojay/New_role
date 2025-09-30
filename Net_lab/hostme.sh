#!/bin/bash
read -p "Please Enter The Website Here: " SITE
echo 
echo "Checking host for $SITE now"
host "$SITE"
echo "Thank you" 
