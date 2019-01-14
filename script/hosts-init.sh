#! /bin/sh

function hosts_init() {
    for i in group_vars host_vars
    do
        mkdir -p $1/$i
    done
}

hosts_init $1
