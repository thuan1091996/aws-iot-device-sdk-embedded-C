#!/bin/bash
# requires: Python, Permission to run shell script
# permissions for this shell session only:   chmod +x run.sh
echo -e "\nRunning fleet provisioning sample application... "
AWS_IOT_ENDPOINT="a1tdvh7gznuyl9-ats.iot.ap-southeast-1.amazonaws.com"
ROOT_CA_CERT_PATH="/claim_certs/RootCA.pem"
CLAIM_CERT_PATH="/claim_certs/device_certificate.pem.crt"
CLAIM_PRIVATE_KEY_PATH="/claim_certs/priv-key.pem.key"
echo -e "\nRunning cmake..."
# cmake -S . -Bbuild -DDAWS_IOT_ENDPOINT="$AWS_IOT_ENDPOINT" -DROOT_CA_CERT_PATH="$ROOT_CA_CERT_PATH" -DCLAIM_CERT_PATH="$CLAIM_CERT_PATH" -DCLAIM_PRIVATE_KEY_PATH="$CLAIM_PRIVATE_KEY_PATH" -DPROVISIONING_TEMPLATE_NAME="thingy91_claim_template2" -DDEVICE_SERIAL_NUMBER="a1b2c3"
cmake -S . -Bbuild 
cd build
echo -e "\nRunning make..."
make fleet_provisioning_keys_cert_demo