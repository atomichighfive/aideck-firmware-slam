#!/usr/bin/env bash

docker run --rm -v ${PWD}:/module aideck-with-autotiler tools/build/make-example . clean image
cfloader flash BUILD/GAP8_V2/GCC_RISCV_FREERTOS/target.board.devices.flash.img deck-bcAI:gap8-fw -w radio://0/90/2M