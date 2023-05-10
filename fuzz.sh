#!/bin/bash

while read website;
do echo "Testing $website"
curl -l $website | grep HTTP/1.1 | awk {'print $2'}
done < websites.txt
