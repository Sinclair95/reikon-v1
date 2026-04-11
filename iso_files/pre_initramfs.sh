#!/usr/bin/env bash
set -eoux pipefail

# Ensure plymouth script plugin exists
dnf5 install -y plymouth plymouth-plugin-script

# Set REIKON theme
plymouth-set-default-theme reikon

# Rebuild initramfs WITH the theme
dracut -f --regenerate-all
