#!/bin/bash


# Number wordlist generater

# Description : This tool generate number wordlist such as number [1-9] [10-99] [100-999] [1000-9999] [10000-99999] [100000-999999] [1000000-9999999] [10000000-99999999] wordlist.
# Author      : j4mei
# Language    : Shell


x=1
y=1
z=$((y*10-1))
mkdir num_pwd
while [ $x -le 8 ]; do
	seq $y $z > num_pwd/num_pwd_$x.txt
	echo "[+] NUMBER $y - $z wordlist generating sucess - `pwd`/num_pwd/num_pwd_$x.txt"
	x=$((x+1))
	y=$((y*10))
	z=$((y*10-1))
done
