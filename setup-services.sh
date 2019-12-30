#!/bin/sh
#
# i.MX Yocto Project Build Environment Services Setup Script
#
# Copyright (C) 2019 KENTKART

echo "#SSH Enable" >> $BUILD_DIR/conf/local.conf
echo "IMAGE_FEATURES += \"ssh-server-openssh\"" >> $BUILD_DIR/conf/local.conf

