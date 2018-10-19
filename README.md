# aks-toolkit
### Status
[![CircleCI](https://circleci.com/gh/kiseru-io/aks-toolkit.svg?style=svg)](https://circleci.com/gh/kiseru-io/aks-toolkit)

A prebaked image derived from Azure base image, but containing essential tools for AKS such as -

- helm 
- kubectl 

## Run locally
To run locally, simply pull the image and run it via Docker

```
docker run -it --rm aks-toolkit /bin/bash
```

## Run inside k8s
If you want to run inside your current k8s cluster, simply deploy using

```
kubectl create -f https://raw.githubusercontent.com/kiseru-io/aks-toolkit/master/aks-toolkit.yml
```

Verify that the aks-toolkit Pod is running

```
$ kubectl get pods 
NAME                                      READY     STATUS             RESTARTS   AGE
aks-toolkit                               1/1       Running            0          15m
```
To connect just exec to the running instance 

```
kubectl exec -it aks-toolkit /bin/bash
```


