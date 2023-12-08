#!/bin/bash

make

FILES=('sll' 'dll' 'dyn')

for i in "${FILES[@]}"
do
    valgrind --log-file="mem_accesses_log.txt" --tool=lackey --trace-mem=yes ./dijkstra_$i input.dat
    cat mem_accesses_log.txt | grep 'I\| L' | wc -l > mem_accesses_$i.txt

    valgrind --tool=massif --massif-out-file=mas_out.txt ./dijkstra_$i input.dat
    ms_print mas_out.txt > mem_footprint_$i.txt
    
    rm dijkstra_$i
done