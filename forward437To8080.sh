#!/bin/bash

PORT="$1"

# Usage message, require port number
if [ $# -ne 1 ]
then
   echo "Usage: $0 [port number]"; 
   exit 1;
fi

# SSH forward all results to local machine, port 8080
ssh -L 8080:cslvmfaculty08:$PORT cpe-437
