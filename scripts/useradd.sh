#!/bin/bash

getent passwd svp > /dev/null

if [ $? -eq 0 ]; then
    echo "yes the user exists"
    else
        groupadd svp
	useradd -G svp svp
fi
