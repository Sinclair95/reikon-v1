#!/usr/bin/env bash
set -eoux pipefail

# Ensure the script-based Plymouth module exists
dnf5 install -y plymouth-plugin-script

# Install REIKON Plymouth theme into the image root
mkdir -p /usr/share/plymouth/themes/reikon
cp -r /github/workspace/build_files/plymouth/themes/reikon/* /usr/share/plymouth/themes/reikon/

# Set REIKON as the default theme BEFORE initramfs is generated
plymouth-set-default-theme reikon
