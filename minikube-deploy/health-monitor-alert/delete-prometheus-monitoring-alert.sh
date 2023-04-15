#!/bin/sh

kubectl delete -f clusterRole.yaml

kubectl delete -f kube-state-metrics-configs/

kubectl delete namespace monitoring

kubectl delete -f prometheus-config-map.yaml

kubectl delete -f alertmanager-config-map.yaml

kubectl delete -f alertmanager-deployment.yaml

kubectl delete -f prometheus-deployment.yaml