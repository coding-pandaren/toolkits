#!/bin/sh

LLDB_DIR=/data/local/tmp/lldb_server

adb push bin $LLDB_DIR/bin/
adb push start_lldb_server.sh $LLDB_DIR/start_lldb_server.sh
adb shell chmod 0775 $LLDB_DIR/start_lldb_server.sh