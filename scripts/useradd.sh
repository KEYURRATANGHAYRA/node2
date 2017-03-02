#!/bin/bash

getent passwd svp > /dev/null

if [ $? -eq 0 ]; then
    echo "yes the user exists"
    else
        echo "No, the user does not exist" ; useradd svp ; groupadd svp
	fi
