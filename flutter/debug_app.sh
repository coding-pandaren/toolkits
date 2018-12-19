#!/bin/bash

current_directory=$(cd "$(dirname "$0")";pwd)

./flutter/tools/gn --runtime-mode=debug --android --unoptimized
./flutter/tools/gn --runtime-mode=debug --unoptimized
ninja -C out/android_debug_unopt
ninja -C out/host_debug_unopt
cd $current_directory/flutter/examples/flutter_view
flutter run --local-engine-src-path $current_directory --local-engine=android_debug_unopt