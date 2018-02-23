#!/bin/bash -e

VERSION="1.10"

SITE="https://dl.google.com/go"
DL="go$VERSION.linux-amd64.tar.gz"
SHA="b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33"

#make sha file
echo "$SHA  $DL" > $DL.sha256

wget "$SITE/$DL"
sha256sum -c $DL.sha256

#sudo tar -C "/usr/local" -xzf $DL

rm $DL $DL.sha256
