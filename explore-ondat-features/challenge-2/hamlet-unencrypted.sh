#!/bin/bash

storageos cordon ondat-server >/dev/null 2>&1
storageos cordon ondat-worker1 >/dev/null 2>&1
sleep 5
kubectl apply -f ~/ondat/hamlet-unencrypted.yaml
sleep 8
kubectl label "$(kubectl get pvc -o name | grep "\-unencrypted")" "storageos.com/replicas=0"
storageos uncordon ondat-server >/dev/null 2>&1
storageos uncordon ondat-worker1 >/dev/null 2>&1