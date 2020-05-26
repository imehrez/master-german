#!/bin/sh

echo building...

# Build new image and push to ACR.
WEB_IMAGE_NAME="${ACR_LOGINSERVER}/master-german-front:kube${BUILD_NUMBER}"
docker build -t $WEB_IMAGE_NAME ./master-german
docker login ${ACR_LOGINSERVER} -u ${ACR_ID} -p ${ACR_PASSWORD}
docker push $WEB_IMAGE_NAME 
