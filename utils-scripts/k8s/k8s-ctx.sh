#!/bin/bash
kubectl config get-contexts
kubectl config use-context "$1"
