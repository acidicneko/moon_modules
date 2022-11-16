#!/bin/bash

modern_dir () {
    echo "\e[34m \w\e[0m"
}

modern_prompt_main () {
    exit_code=$?
    if [[ $exit_code != 0 ]] ; then
	    printf "\e[31;1m\e[0m"
    else
        printf "\e[32;1m\e[0m"
    fi
}

modern_prompt () {
    echo "\$(modern_prompt_main)"
}
