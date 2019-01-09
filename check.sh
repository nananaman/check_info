#!/bin/sh

# get cpu info
echo -e '\n#####################\n##       CPU       ##\n#####################' > info.txt
cat /proc/cpuinfo | grep 'vendor' | uniq >> info.txt
cat /proc/cpuinfo | grep 'model name' | uniq >> info.txt
echo -e -n 'processor\t:' >> info.txt
cat /proc/cpuinfo | grep processor | wc -l >> info.txt


# get gpu info
echo -e '\n#####################\n##       GPU       ##\n#####################' >> info.txt
nvidia-smi >> info.txt

# get baseboard info
echo -e '\n#####################\n##    baseboard    ##\n#####################' >> info.txt
sudo dmidecode -t baseboard >> info.txt

# get memory info
echo -e '\n####################\n##     memory     ##\n####################' >> info.txt
free >> info.txt
sudo dmidecode -t memory >> info.txt
