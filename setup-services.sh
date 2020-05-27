#!/bin/sh
#
# i.MX Yocto Project Build Environment Services Setup Script
#
# Copyright (C) 2019 KENTKART

echo "#SSH Enable" >> $BUILD_DIR/conf/local.conf
echo "IMAGE_FEATURES += \"ssh-server-openssh\"" >> $BUILD_DIR/conf/local.conf

echo "#PPP and WVDIAL adding" >> $BUILD_DIR/conf/local.conf
echo "IMAGE_INSTALL_append += \" ppp\"" >> $BUILD_DIR/conf/local.conf
echo "IMAGE_INSTALL_append += \" wvdial\"" >> $BUILD_DIR/conf/local.conf
