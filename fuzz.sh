#!/bin/bash


urls_file="urls.txt"


while read url; do

  response=$(curl -s -I "$url")

  status_code=$(echo "$response" | grep "HTTP" | awk '{print $2}')
  content_length=$(echo "$response" | grep "Content-Length" | awk '{print $2}')

  echo "URL: $url"
  echo "Status Code: $status_code"
  echo "Content Length: $content_length"
done < "$urls_file"
