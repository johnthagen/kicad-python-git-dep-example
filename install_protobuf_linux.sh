#!/usr/bin/env bash

VERSION=25.3
ARCH=x86_64   # use aarch_64 on ARM64 machines

curl -LO "https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-linux-${ARCH}.zip"
sudo unzip -o "protoc-${VERSION}-linux-${ARCH}.zip" -d /usr/local

protoc --version
