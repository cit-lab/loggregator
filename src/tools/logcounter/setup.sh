#!/bin/bash -e

export API_ADDR="http://api.pecan.cf-app.com"
export DOPPLER_ADDR=`cf curl /v2/info | jq --raw-output '.doppler_logging_endpoint'`
export UAA_ADDR=`cf curl /v2/info | jq --raw-output '.authorization_endpoint'`
echo -n "CF Client ID: "
read CLIENT_ID
echo -n "CF Client Secret: "
read -s CLIENT_SECRET
echo
export CLIENT_ID CLIENT_SECRET
echo -n "CF Username: "
read CF_USERNAME
echo -n "CF Password: "
read -s CF_PASSWORD
echo
echo -n "Subscription Id: "
read SUBSCRIPTION_ID
export CF_USERNAME CF_PASSWORD SUBSCRIPTION_ID
export MESSAGE_PREFIX="logemitter"
