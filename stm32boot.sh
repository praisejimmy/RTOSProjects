#!/bin/bash
# Copy executable .elf to binary and load
arm-none-eabi-objcopy -O binary $1 $2
st-flash write $2 0x8000000
