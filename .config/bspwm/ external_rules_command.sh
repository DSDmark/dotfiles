#!/usr/bin/env bash

wid=$1
class=$2
instance=$3

if [[ "$instance" == polybar ]]; then
  xdo raise $wid
fi
