#!/bin/bash

storageos cordon ondat-server &> /dev/null
storageos cordon ondat-worker1 &> /dev/null
sleep 5
kubectl apply -f ~/ondat/hamlet-unencrypted.yaml
sleep 8
kubectl label "$(kubectl get pvc -o name | grep "\-unencrypted")" "storageos.com/replicas=0"
storageos uncordon ondat-server &> /dev/null
storageos uncordon ondat-worker1 &> /dev/null