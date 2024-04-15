#!/bin/bash

# osdetect.sh
# It will show which OS is between MS-Windows/Linux/MacOs

# The -t option tells it to print nothing if the command is not found, the command returns false in that case

if type -t wevutil &> /dev/null
then
    OS=MSWIN
elif type -t scutil &> /dev/null
then
    OS=macOS
else
    OS=Linux
fi

echo $OS
