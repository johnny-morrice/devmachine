#!/usr/bin/env bash
set -x
set -e
docker pull postgres:13.3-alpine && docker pull golang:1.16-alpine3.14 && docker pull redis:6.2.6-alpine