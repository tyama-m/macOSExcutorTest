#!/bin/bash

CONF_FILE=/usr/local/src/openssl-1.1.1n-arm64/Configurations/10-main.conf

SERCH_STRING1='-arch arm64'
REPLACE_STRING1='-arch arm64 -mmacosx-version-min=11.0 -isysroot \/Applications\/Xcode.app\/Contents\/Developer\/Platforms\/MacOSX.platform\/Developer\/SDKs\/MacOSX.sdk'

sudo sed -i '' -e "s/$SERCH_STRING1/$REPLACE_STRING1/g" $CONF_FILE
sudo sed -i '' -e "s/ios64/macosx/g" $CONF_FILE
