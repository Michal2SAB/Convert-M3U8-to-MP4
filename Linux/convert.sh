#!/bin/bash

function Failure
{
    echo -e "\e[32mError: Output name cannot contain any spaces, use - symbol to separate if you need to.\e[0m"
    echo ""
    Output
}

function Output
{
    read -p "Output name: " VID
    echo ""
    if [[ "$VID" =~ \ |\' ]]
    then
        Failure
    else
        read -p "Playlist link: " playlist
        ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i $playlist -c copy $VID.mp4
    fi
}

if ! command -v ffmpeg &> /dev/null
then
    echo -e "\e[32mError: You need to install ffmpeg before you run this program. Make sure it's added to PATH.\e[0m"
else
    Output
fi
