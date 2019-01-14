#! /bin/sh

function role_init() {
    for i in tasks defaults handlers vars meta templates files
    do
        mkdir -p $1/$i
    done
}

role_init roles/$1
