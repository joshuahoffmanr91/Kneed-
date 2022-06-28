#!/bin/bash


Compress () {

shopt -s extglob
export N="$(cat $@)"
S_=(${N})
declare -g A_=(${S_[@]//?()/\\})
eval eval declare -Ag B_[\\\${A_[{0..${#A_[@]}}]}-]+=\"\\\ $\[A++\]\"
D_=("${!B_[@]}")
eval eval declare -ag C_[\\\${#D_[{0..${#D_[@]}}]}]+=\"\\\ \\\${D_[\$\[B++\]]}\"
E_=(${C_[@]})
eval eval declare -g F_[\$\[C++\]]=\\\${E_[{${#E_[@]}..0}]}

	for b in ${F_[@]}; do

		for c in ${B_["$b"]}; do
		! [[ " ${H_[@]//\\} " == *" ${A_[$[A--]]//\\} "* ]] &&\
		H_+=("${A_[$[A+1]]}")
		[[ -z $e ]] && eval {d,e}=\$c && continue 
		N=${N/"${b%-}"/$[c-d]}
		d=$c
		done

	N=${N/"${b%-}"/$c-$e}
	unset d e
	done

eval echo ${H_[@]} > $1.test
cat <<<"$N" >> $1.test	

}


Decompress () {

Stand="$(cat $@)"
mapfile Jump < $@
Slip=(${Jump[0]}) 
Skip=(${Jump[@]:1:${#Jump[@]}})
Road=($(awk /-/ <<<$(echo -e ${Skip[@]/%/\\n})))

        for Turn in ${Slip[@]}; do
	Step=${Road[-$[++A]]}
	Path=${Step#*-}
	Track=${Step%-*}
	
		until [[ 0 == $Track ]]; do
		Track=$[Track-Path]
		Walk=$[Path+${Walk:=0}]
		Path=${Skip[$Walk]}
		done

	unset Path Track Walk Step
	done

}

Compress $@
Decompress $@.test


