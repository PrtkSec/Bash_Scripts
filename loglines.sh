#!/bin/bash

#This script adds a correlative number at the beginning of each line-
#seperated by a set of dashes from the actual message

#specify the log file location between the single quotes
LOG='/var/log/messages'

lineNumber=0
while read LINE
do
	lineNumber=$((lineNumber + 1))
	echo $lineNumber -- ${LINE}
done < ${LOG}
