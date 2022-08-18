#!/bin/bash

shopt -s extglob

Compress () {

N=" $(cat $1) " && N="${N//$'\n'/\ $'\n'\ }" && N="${N//$'\t'/    }"
S_=(${N}) && A_=(${S_[@]//?()/\\})
eval eval declare -A B_[\\\${A_[{0..${#A_[@]}}]%\\}]+=\"\\\ $\[A++\]\"

        for b in ${!B_[@]}; do

                for c in ${B_[$b]}; do
                ! [[ " ${H_[@]} " == *" ${A_[--A-1]} "* ]] && H_+=("${A_[A-1]}")
                [[ -z $e ]] && e=$c && continue
                N="${N/" $b "/\ $[c-${d:=e}]\ }"
                d=$c
                done

        N="${N/" $b "/\ 0$e\ }"
        unset d e
        done

eval echo ${H_[@]} "\"
$N\"" > $1.isf

}

Decompress () {

shopt -s extglob
unset {A..Z}
mapfile Jump < "$@"
Slip=(${Jump[0]})
Skip=(${Jump[@]:1})
Runs="${Jump[@]:1}" && eval Runs=\""${Runs//+([0-9])/\$[B++]}"\"

        for (( Road=0; ${#Skip[@]} >= Road; Road++ )); do
        [[ ${Skip[Road]::1} == 0 ]] || continue && ((++A)) &&\
        [[  ${Skip[Road]#1} == $Road ]] && Runs="${Runs/$Walk/${Slip[-A]}}" &&\
        continue || Path=${Skip[Road]#0}

                until (( ${Walk:=0} == $Road )); do
                Path=${Skip[$((Walk+=Path))]/-}
                Runs="${Runs/$Walk/${Slip[-A]}}"
                done

        unset Path Walk
        done

echo "${Runs}"

}


Compress $1
Decompress $1.isf
