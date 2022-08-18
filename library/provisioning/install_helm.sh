#!/bin/bash

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

ln -s /etc/rancher/k3s/k3s.yaml ~/.kube/config

helm repo add jenkins https://charts.jenkins.io

helm repo add argo https://argoproj.github.io/argo-helm
helm repo add apache-airflow https://airflow.apache.org
helm repo add gitea-charts https://dl.gitea.io/charts/
