#!/bin/sh
set -e
git clone --depth=1 https://github.com/jacksonliam/mjpg-streamer.git /tmp/mjpg-streamer
cd /tmp/mjpg-streamer
curl https://github.com/jacksonliam/mjpg-streamer/commit/7b24e2a593a0029c6f555c9001be87a34eceecc6.diff | patch -p1
cd mjpg-streamer-experimental
sed -i 's/VERSION 2\.8\.3/VERSION 3.10/' CMakeLists.txt
make
make install
