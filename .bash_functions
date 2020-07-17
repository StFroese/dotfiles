#!/usr/bin/env bash
#starts latex enviroment
function lenv()
{
    cd $1
    nvim ../
    lualatex $1*.tex
}

