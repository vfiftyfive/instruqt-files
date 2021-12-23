#!/bin/bash

storageos cordon ondat-server
storageos cordon ondat-worker1
sleep 5
kubectl apply -f ~/ondat/hamlet-unencrypted.yaml
sleep 8
kubectl label pvc $(kubectl get pvc -o name | grep "\-encrypted") "storageos.com/replicas=0"
storageos uncordon ondat-server
storageos uncordon ondat-worker1