#!/bin/sh

set -e

if [ $GIT_USER_ID -gt -1 ]
then
    usermod -u $GIT_USER_ID git
fi

if [ $GIT_GROUP_ID -gt -1 ]
then
    groupmod -g $GIT_GROUP_ID git
fi

/usr/bin/entrypoint
