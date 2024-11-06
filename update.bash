#!/bin/bash
cd debian/jammy/
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "eieioeiji0501@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "eieioeiji0501@gmail.com" --clearsign -o - Release > InRelease
cd ../../
