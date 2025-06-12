#!/bin/bash
docker build -t sampleapp .
docker rm -f samplerunning 2>/dev/null
docker run -t -d -p 5000:8080 --name samplerunning sampleapp