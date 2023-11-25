#!/usr/bin/env bash
# Install kas build tool

set -o nounset  # (set -u) No unset variables
set -o errexit  # (set -e) Exit if any statement returns non-true value

export DEBIAN_FRONTEND=noninteractive
apt-get -y install python3 python3-pip

pip install kas
