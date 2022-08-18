#!/bin/bash

# Expose Port of dashboard
kubectl -n kubernetes-dashboard expose deployment kubernetes-dashboard --port=8443 --name=kubernetes-dashboard-expose --type=NodePort --overrides '{ "apiVersion": "v1","spec":{"ports": [{"port":8443,"protocol":"TCP","targetPort":8443,"nodePort":30100}]}}'
