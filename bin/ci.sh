#!/bin/bash
set -ev

if [[ "${TRAVIS_BRANCH}" = "master" || -n "${TRAVIS_TAG}" ]]; then
  packer build -only=amazon-ebs template.json
fi
