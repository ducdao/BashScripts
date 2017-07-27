#!/bin/bash

PORT="$1"

# Usage message, require port number
if [ $# -ne 1 ]
then
   echo "Usage: $0 [port number]"; 
   exit 1;
fi

# Kill SSH forward of local machine, port 8080
ssh -KL 8080:cslvmfaculty08:$PORT cpe-437
