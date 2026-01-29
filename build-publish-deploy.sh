#!/bin/bash
set -e
bundle exec jekyll build
docker build . --no-cache -t ghcr.io/helgihg/helgihrafn.is:latest
docker push ghcr.io/helgihg/helgihrafn.is:latest
kubectl rollout restart deployment/helgihrafn-is -n prod-is-helgihrafn
