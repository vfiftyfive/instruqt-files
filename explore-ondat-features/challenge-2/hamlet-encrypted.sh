#!/bin/bash

storageos cordon ondat-server
storageos cordon ondat-worker2
kubectl apply -f ~/ondat/hamlet-encrypted.yaml