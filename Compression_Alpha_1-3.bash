#!/bin/bash


Compress () {

shopt -s extglob
export N="$(cat $@)"
S_=(${N})
declare -g A_=(${S_[@]//?()/\\})
eval eval declare -Ag B_[\\\${A_[{0..${#A_[@]}}]}-]+=\"\\\ $\[A++\]\"
D_=(${!B_[@]})
eval eval declare -ag C_[\\\${#D_[{0..${#D_[@]}}]}]+=\"\\\ \\\${D_[B++]}\"
E_=(${C_[@]})
eval eval declare -g F_[C++]=\\\${E_[{${#E_[@]}..0}]}

        for b in ${F_[@]%-}; do

                for c in ${B_[$b-]}; do
                ! [[ " ${H_[@]} " == *" ${A_[--A-1]} "* ]] && H_+=("${A_[A-1]}")
                [[ -z $e ]] && eval {d,e}=\$c && continue
                N="${N/"$b"/$[c-d]}"
                d=$c
                done

        N="${N/"$b"/$e-}"
        unset d e
        done

eval echo ${H_[@]} > $1.test
cat <<<"$N" >> $1.test

}


Decompress () {

Stand="$(cat $@)"
mapfile Jump < "$@"
Slip=(${Jump[0]})
Skip=(${Jump[@]:1:${#Jump[@]}})

        for (( Road=0; ${#Skip[@]} >= Road; Road++ )); do
        [[ ${Skip[Road]//[!-]} =~ - ]] || continue && ((A++)) &&\
        [[  ${Skip[Road]/-} == $Road ]] && Leap[Road]=${Slip[-A+1]} &&\
        continue || Path=${Skip[Road]/-}

                until (( Walk == Road )); do
                Path=${Skip[$((Walk+=Path))]/-}
                Leap[Walk]=${Slip[-A+1]}
                done

        unset Path Walk
        done

Stand="${Jump[@]:1}"
eval Runs="\"${Stand//+([0-9|-])/\$\{Leap\[\$\(\(Z++\)\)\]\}}\""
cat <<<"$Runs" >> $1

}

Compress $@
Decompress $@.test
