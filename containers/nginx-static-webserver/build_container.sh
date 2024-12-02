#!/bin/bash -xe

cd "$(dirname "${$BASH_SOURCE[0]}")"
podman build -t localhost/nginx-static-webserver .
podman push --tls-verify=false localhost/nginx-static-webserver default-route-openshift-image-registry.apps-crc.testing/about-me/nginx-static-webserver:latest
