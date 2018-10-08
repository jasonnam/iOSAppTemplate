#!/bin/sh
(cd $FLINT_OUTPUT_PATH && exec curl -L "https://raw.githubusercontent.com/summonbin/core/0.1.1/scripts/init.sh" | sh)
(cd $FLINT_OUTPUT_PATH && exec echo "pod ruby 2.5.1" >> "executable/debug/bin")
(cd $FLINT_OUTPUT_PATH && exec echo "carthage swift system https://github.com/Carthage/Carthage 0.31.0" >> "executable/debug/bin")
