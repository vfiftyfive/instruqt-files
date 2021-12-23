#!/bin/bash

storageos cordon ondat-server >/dev/null 2>&1 
storageos cordon ondat-worker2 >/dev/null 2>&1
sleep 5
kubectl apply -f ~/ondat/hamlet-encrypted.yaml
sleep 8
storageos uncordon ondat-server >/dev/null 2>&1
storageos uncordon ondat-worker2 >/dev/null 2>&1