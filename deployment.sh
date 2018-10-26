#!/usr/bin/env bash
kubectl create -f namespace.yaml
kubectl create secret tls tls-certificate --key certs/nginx-selfsigned.key --cert certs/nginx-selfsigned.crt --namespace=distribution
kubectl create secret generic tls-dhparam --from-file=certs/dhparam.pem --namespace=distribution
kubectl create -f deployment/.
