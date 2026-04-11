#!/usr/bin/env bash
set -eoux pipefail

dnf5 install -y plymouth-plugin-script

mkdir -p /usr/share/plymouth/themes/reikon
cp -r /github/workspace/build_files/plymouth/themes/reikon/* /usr/share/plymouth/themes/reikon/

plymouth-set-default-theme reikon
