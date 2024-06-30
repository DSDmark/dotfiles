#!/bin/bash

set -e

fifo="/tmp/lf-ueberzug-$$"
mkfifo "$fifo"
ueberzug layer --parser bash < "$fifo" &
exec 3> "$fifo"
cleanup() {
    exec 3>&-
    wait
    rm "$fifo"
}
trap cleanup EXIT

case "$1" in
    image/*)
        path=$(readlink -f "$2")
        echo "path=$path"
        printf '{"action": "add", "identifier": "preview", "path": "%s", "x": %d, "y": %d, "width": %d, "height": %d}\n' \
               "$path" "$3" "$4" "$5" "$6" > "$fifo"
        ;;
esac

