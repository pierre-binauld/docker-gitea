#!/bin/sh

set -e

if [ $UID_GIT -gt -1 ]
then
    usermod -u $UID_GIT git
fi

if [ $GID_GIT -gt -1 ]
then
    groupmod -g $GID_GIT git
fi

/usr/bin/entrypoint
