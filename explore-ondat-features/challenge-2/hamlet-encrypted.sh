#!/bin/bash

storageos cordon ondat-server &> /dev/null
storageos cordon ondat-worker2 &> /dev/null
sleep 5
kubectl apply -f ~/ondat/hamlet-encrypted.yaml
sleep 8
storageos uncordon ondat-server &> /dev/null
storageos uncordon ondat-worker2 &> /dev/null