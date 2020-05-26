#!/bin/sh

echo deploying..

# Update kubernetes deployment with new image.
WEB_IMAGE_NAME="${ACR_LOGINSERVER}/master-german-front:kube${BUILD_NUMBER}"
kubectl set image deployment/master-german-front master-german-front=$WEB_IMAGE_NAME
