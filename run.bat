@echo off
REM Build the Docker image
docker build -t sampleapp .

REM Stop and remove the container if it exists
docker rm -f samplerunning >nul 2>&1

REM Run the container in detached mode, map ports, and name it
docker run -t -d -p 5000:8080 --name samplerunning sampleapp
