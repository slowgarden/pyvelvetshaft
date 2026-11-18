#!/usr/bin/env bash
set -e
LIB="cyclic-foot.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/slowgarden/pyvelvetshaft/releases/download/frosty-comet-hidden-cedar/cyclic-foot.a"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
