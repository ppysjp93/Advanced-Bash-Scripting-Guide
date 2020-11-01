#!/bin/bash 

echo "The date is `date`" > log2.2.2.txt
echo "The logged in users are `who`" >> log2.2.2.txt
echo "The system uptime is `uptime`" >> log2.2.2.txt

cat log2.2.2.txt
