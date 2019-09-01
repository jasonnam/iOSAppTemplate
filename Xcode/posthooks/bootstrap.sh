#!/bin/sh
(cd $FLINT_OUTPUT_PATH && exec chmod +x executable/init)
(cd $FLINT_OUTPUT_PATH && exec executable/init)
(cd $FLINT_OUTPUT_PATH && exec summon/bin fastlane bootstrap)
