#!/bin/bash
kubectl delete -f nextcloud-db.yml
kubectl delete -f nextcloud-server.yml
kubectl delete -f kubernetes-storage.yml
ssh admin@zfs sudo rm -r /storage/containers/db/*
ssh admin@zfs sudo rm -r /storage/containers/data/*
