#!/bin/bash

storageos cordon ondat-server
storageos cordon ondat-worker1
kubectl apply -f ~/ondat/hamlet-unencrypted.yaml