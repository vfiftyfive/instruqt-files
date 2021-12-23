#!/bin/bash

kubectl label node ondat-server "storageos.com/computeonly=true" >/dev/null 2>&1 
kubectl label node ondat-worker2 "storageos.com/computeonly=true" >/dev/null 2>&1 
sleep 5
kubectl apply -f ~/ondat/hamlet-encrypted.yaml
sleep 8
kubectl label node ondat-server "storageos.com/computeonly"- >/dev/null 2>&1
kubectl label node ondat-worker2 "storageos.com/computeonl"- >/dev/null 2>&1 
