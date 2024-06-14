#!/bin/bash

unset KUBECONFIG

cd .. && docker build -f docker/Dockerfile.latest \
             -t fytiai/chatgpt-on-wechat .

docker tag fytiai/chatgpt-on-wechat fytiai/chatgpt-on-wechat:$(date +%y%m%d)
