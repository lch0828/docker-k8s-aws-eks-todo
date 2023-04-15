# Docker-Kubernetees Minikube/AWS EKS Todo List Demo #

## Member ##
cl4335
Chun-Hua Lin

## About ##

This is a demo where:
* Docker (Docker-compose) image is built.
* K8s deployments done on minikube.
* K8s deployments done on AWS EKS.
* K8s features deployed.
* (Including Prometheus+Alertmanager+Slack)

## Usage ##

1. Clone the repository.
2. Build image:
    ```
   docker-compose build 
    ```
3. Deploy on Docker:
    ```
   docker-compose up 
    ```
    ```
   docker-compose down
    ```
4. Deploy on Minikube:
    ```
   minikube start 
    ```
    ```
   kubectl apply -f minikube-deploy/my-todo.yml
    ```
    ```
   kubectl delete -f minikube-deploy/my-todo.yml
    ```
5. K8s features:
    ```
   kubectl apply -f minikube-deploy/rolling-update/my-todo-rolling-update.yml
    ```
    ```
    kubectl rollout status deployment my-rolling-update
    ```
    ```
   kubectl delete -f minikube-deploy/rolling-update/my-todo-rolling-update.yml
   ```
   etc.
6. Deploy on AWS EKS:

   * Create cluster (EKS)
   * Create Node (CloudFormation)
   * Connect Node
   * Deploy.

   See more on AWS docs.

