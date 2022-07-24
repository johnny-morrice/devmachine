#!/usr/bin/env bash
set -x
set -e
PAT=$(cat github.pat)
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER_NAME"
git clone "https://${GITHUB_USERNAME}:${PAT}@github.com/johnny-morrice/weather-clock-service.git"
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc