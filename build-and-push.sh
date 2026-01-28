#!/bin/bash
docker build . -t ghcr.io/helgihg/helgihrafn.is:latest
docker push ghcr.io/helgihg/helgihrafn.is:latest
