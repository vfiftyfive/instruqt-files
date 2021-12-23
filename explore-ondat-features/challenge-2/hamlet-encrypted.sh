#!/bin/bash

storageos cordon ondat-server
storageos cordon ondat-worker2
sleep 5
kubectl apply -f ~/ondat/hamlet-encrypted.yaml
sleep 8
storageos uncordon ondat-server
storageos uncordon ondat-worker2