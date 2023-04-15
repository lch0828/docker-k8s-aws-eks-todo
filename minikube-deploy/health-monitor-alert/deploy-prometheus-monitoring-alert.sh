#!/bin/sh

kubectl create -f clusterRole.yaml

kubectl apply -f kube-state-metrics-configs/

kubectl create namespace monitoring

kubectl create -f prometheus-config-map.yaml

kubectl create -f alertmanager-config-map.yaml

kubectl create -f alertmanager-deployment.yaml

kubectl create -f prometheus-deployment.yaml

kubectl get deployments --namespace=monitoring 
