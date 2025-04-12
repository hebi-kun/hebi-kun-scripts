#!/bin/zsh

echo "=====System Health Check $(date)==="

echo -e "\n--- Update and Load ---"
uptime

echo -e "\n--- Top 5 CPU Consumers ---"
ps -Ao user,pid,pcpu,pmem,comm -r -o user,pid,pcpu,pmem,comm | head -n 6


echo -e "\n--- Top 5 Memory Consumers ---"
ps -Ao user,pid,pcpu,pmem,comm | sort -nrk 4 | head -n 6