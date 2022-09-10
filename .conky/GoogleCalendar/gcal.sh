#!/bin/sh

gcalcli --conky calw 2 |
    sed -e 's/color white/color yellow/g' 
