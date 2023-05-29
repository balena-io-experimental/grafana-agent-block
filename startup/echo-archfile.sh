#!/bin/sh
# Echo the agent filename used by Grafana based on arch from balena
# Example:
#   $ echo-archfile.sh aarch64
#   grafana-agent-linux-arm64

basename=grafana-agent-linux-
case "$1" in
  "aarch64" )
    echo ${basename}arm64
    ;;
  "amd64" )
    echo ${basename}amd64
    ;;
  "armv7hf" )
    echo ${basename}armv7
    ;;
  "rpi" )
    echo ${basename}armv6
    ;;
  * )
    echo unknown
    ;;
esac

