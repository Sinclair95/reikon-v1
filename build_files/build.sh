#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 install -y tmux plymouth-plugin-script

#### Example for enabling a System Unit File

systemctl enable podman.socket

# Install REIKON Plymouth theme
mkdir -p /usr/share/plymouth/themes/reikon
cp -r /ctx/plymouth/themes/reikon/* /usr/share/plymouth/themes/reikon/

# Set it as default without rebuilding initramfs in the container
plymouth-set-default-theme reikon
