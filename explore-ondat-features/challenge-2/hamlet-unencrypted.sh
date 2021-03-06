#!/bin/bash

kubectl label node ondat-server "storageos.com/computeonly=true" >/dev/null 2>&1 
kubectl label node ondat-worker1 "storageos.com/computeonly=true" >/dev/null 2>&1 
sleep 5
kubectl apply -f ~/ondat/hamlet-unencrypted.yaml
kubectl label "$(kubectl get pvc -o name | grep "\-unencrypted")" "storageos.com/replicas=0"
sleep 10
kubectl label node ondat-server "storageos.com/computeonly"- >/dev/null 2>&1
kubectl label node ondat-worker1 "storageos.com/computeonly"- >/dev/null 2>&1 
