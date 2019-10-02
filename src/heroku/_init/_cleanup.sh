#!/bin/bash
_cleanup() {
    echo "     ...cleaning up"
    rm -rf _init
    echo "     ...init script removed"
    rm -f "$0"
    exit 0
}