#!/bin/bash
set -e
bundle exec jekyll build --future
docker build . --no-cache -t ghcr.io/helgihg/helgihrafn.is:latest
docker push ghcr.io/helgihg/helgihrafn.is:latest
helm upgrade --install -n prod-helgihrafn --create-namespace helgihrafn deployment
