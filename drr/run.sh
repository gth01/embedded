#!/bin/bash

make

FILES=('sll_sll' 'sll_dll' 'sll_dyn' 'dll_sll' 'dll_dll' 'dll_dyn' 'dyn_sll' 'dyn_dll' 'dyn_dyn')

for i in "${FILES[@]}"
do
    valgrind --log-file="mem_accesses_log.txt" --tool=lackey --trace-mem=yes ./drr_$i
    cat mem_accesses_log.txt | grep 'I\| L' | wc -l > mem_accesses_$i.txt

    valgrind --tool=massif --massif-out-file=mas_out.txt ./drr_$i
    ms_print mas_out.txt > mem_footprint_$i.txt
    
    rm drr_$i
done