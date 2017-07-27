#!/bin/bash

SERVER="$1"

# Usage message
if [ $# -ne 1 ]
then
   echo "Usage: $0 [Unix #]";
   exit 1;
fi

ssh dldao@unix$SERVER.csc.calpoly.edu
