#!/bin/bash

set -e

kubectl apply -f index_green_html.yml
kubectl apply -f green.yml
