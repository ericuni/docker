#!/bin/bash
set -x

# enable coredump in docker
# echo "core.%e.%p.%t" | sudo tee /proc/sys/kernel/core_pattern  
sysctl -w kernel.core_pattern="core.%e.%p.%t"

