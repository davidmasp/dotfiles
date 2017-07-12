#!/bin/bash

ARG1=${1:-15}
echo $ARG1


echo "This is ASCIIdoctor sleeper..."
echo "It will compile the documents in the current folder every ARG1 seconds"

while true
do	
	asciidoctor *.adoc
	sleep $ARG1
done