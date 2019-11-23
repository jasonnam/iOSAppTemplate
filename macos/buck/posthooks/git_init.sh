#!/bin/sh
(cd $FLINT_OUTPUT_PATH && exec git init)
(cd $FLINT_OUTPUT_PATH && exec git add -A)
(cd $FLINT_OUTPUT_PATH && exec git commit -m "Initial commit")
