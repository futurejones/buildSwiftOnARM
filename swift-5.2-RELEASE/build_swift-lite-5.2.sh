#!/bin/bash

INSTALL_DIR=/install
PACKAGE=/output/swift-5.2.3-RELEASE-armv6-raspbian-buster.tar.gz

cd /home/buildSwiftOnARM

./swift/utils/build-script \
    -R \
    --build-subdir buildbot_linux --install-prefix=/usr \
    --install-destdir=${INSTALL_DIR} --installable-package=${PACKAGE} \
    --foundation --libdispatch \
    -- --install-libdispatch --install-foundation --install-swift \
    '--swift-install-components=autolink-driver;compiler;clang-builtin-headers;stdlib;swift-remote-mirror;sdk-overlay;dev' \
    --build-swift-static-stdlib --build-swift-static-sdk-overlay
