#!/bin/sh

if [ -n "$DEBUG" ]; then
    node data_collector.js
else
    node data_collector.js | grep "^\\["
fi