#!/bin/bash

#https://medium.com/@tushar.jadhav29/ansible-playbooks-and-m-2f17d3ebee83

sleep 5 &
#ping 8.8.8.8 -c 20 -q &
pid=$!
frames="/ | \\ -"
echo $pid
while kill -0 $pid 2&>1 > /dev/null;
do
    for frame in $frames;
    do
        printf "\t$frame Loading...\r"
        sleep 0.5
    done
done
printf "Job done!\n"