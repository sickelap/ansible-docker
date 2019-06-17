#!/bin/sh

echo UID: $(id -u)

exec $@
