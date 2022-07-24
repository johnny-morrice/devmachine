#!/usr/bin/env bash
set -x
set -e
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER_NAME"
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc