#! /bin/bash

FAKE_HOME=$PWD

echo_error()
{
    echo "[$(date +'%F %T')] <$(caller 1)> ERROR: $@" >&2
}

echo_exit()
{
    echo_error "$@"
    exit 1
}

echo_info()
{
    echo "[$(date +'%F %T')] <$(caller 1)> INFO: $@" >&2
}

[ -z "${0##*env.sh*}" ] && echo_exit "Please source it: . $0"

[ -d "$FAKE_HOME" ] || echo_exit "HOME must be a exist directory."

export HOME=$FAKE_HOME
echo "Fake Home to $HOME"
