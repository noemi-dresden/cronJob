#!/usr/bin/env bash


function start() {
    echo $MY_ENV_VARIABLE 
    # do something
}

# source the env variable
source /etc/environment

# start the job
start


