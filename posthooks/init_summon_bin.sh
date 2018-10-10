#!/bin/sh
(cd $FLINT_OUTPUT_PATH && exec curl -L "https://raw.githubusercontent.com/summonbin/core/0.1.1/scripts/init.sh" | sh)
(cd $FLINT_OUTPUT_PATH && exec echo "export LANG=en_US.UTF-8" >> "executable/debug/env")
(cd $FLINT_OUTPUT_PATH && exec echo "fastlane ruby 2.5.1" >> "executable/debug/bin")
(cd $FLINT_OUTPUT_PATH && exec echo "pod ruby 2.5.1" >> "executable/debug/bin")
(cd $FLINT_OUTPUT_PATH && exec echo "carthage swift system https://github.com/Carthage/Carthage 0.31.0" >> "executable/debug/bin")
(cd $FLINT_OUTPUT_PATH && exec echo "bartycrouch binary download https://github.com/Flinesoft/BartyCrouch/releases/download/3.13.0/portable_bartycrouch.zip /" >> "executable/debug/bin")
(cd $FLINT_OUTPUT_PATH && exec echo "swiftgen binary download https://github.com/SwiftGen/SwiftGen/releases/download/5.3.0/swiftgen-5.3.0.zip bin/" >> "executable/debug/bin")
(cd $FLINT_OUTPUT_PATH && exec echo "sourcery swift system https://github.com/krzysztofzablocki/Sourcery 0.15.0" >> "executable/debug/bin")
