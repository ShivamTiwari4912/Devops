#! /bin/bash
#this is a file to twst the status of the device

echo "hey good morning, please enter your name"

read name

echo " ---------------------------------Welcome here $name -------------------------------"
echo " "
echo "Here is the uptime and login details"

uptime

last -a |head -3

echo " "
echo " -----------------------------------------------------------------------------------"
echo " "
echo "here are some more details"

w

echo " Here is the free ram details "
echo " "
free -m | xargs | awk '{print "Free Ram Details ="  $10 "/" $8}'

echo " "
echo " "

echo "here is the most expensive process"

top -b |head -10

echo " "

echo "here is the disk details"

du -hs *
