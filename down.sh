#!/usr/bin/env bash
docker-compose \
  -f dc/sys/postgres.yml \
  -f dc/app/test_app.yml \
  down
#  -f dc/sys/jenkins.yml \
#  -f dc/app/like-stat.yml \
#  -f dc/sys/nginx.yml \
#  -f dc/sys/log.yml \
