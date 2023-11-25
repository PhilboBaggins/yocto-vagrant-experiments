#!/usr/bin/env bash
# Install packages from Debian/Ubuntu repositories

set -o nounset  # (set -u) No unset variables
set -o errexit  # (set -e) Exit if any statement returns non-true value

YOCTO_REQUIREMENTS="gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm"
PACKAGES_I_LIKE_TO_HAVE="git tig tree htop dos2unix ripgrep"

export DEBIAN_FRONTEND=noninteractive

apt-get -y update
#apt-get -y upgrade
apt-get -y install $YOCTO_REQUIREMENTS $PACKAGES_I_LIKE_TO_HAVE
apt-get -y autoremove --purge
