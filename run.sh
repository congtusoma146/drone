#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=80d1fbcce5d637951ca7
export DRONE_GITHUB_CLIENT_SECRET=37c4facd7a19a258ca895d32ade826c8806f822d
export DRONE_GITHUB_ADMIN=congtusoma146
export DRONE_SERVER_HOST=0eb1-113-161-84-89.ap.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
