#!/bin/sh

LLDB_DIR=/data/local/tmp/lldb_server

#remove all file
adb shell "su 0 rm -rf $LLDB_DIR/*"

#push 
adb push bin $LLDB_DIR/bin/
adb push start_lldb_server.sh $LLDB_DIR/start_lldb_server.sh

#
adb shell "su 0 chmod 777 $LLDB_DIR/start_lldb_server.sh"

#start
adb shell "su 0 $LLDB_DIR/start_lldb_server.sh"