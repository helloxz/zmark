#!/bin/bash
bun output

sudo docker build -t helloz/zmark:test -f Dockerfile .
sudo docker push helloz/zmark:test