#! /bin/bash

echo "Waiting for application to run..."

sleep 10

# Get the public IP of the AWS EC2 instance

# Curl to the public IP
while true; do
    curl_result=$(curl "http://PUBLIC_IP:3000") && break  # Break the loop on successful connection
    sleep 120
done


# Display the result
echo "Curl Result:"
echo "$curl_result"
