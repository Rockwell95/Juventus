#!/bin/bash

FILES=$(find /home/Desktop/Software\ Quality/Assignment1/ -type f -not -path "*actual\ output*" -not -path "*expected\ output*")

shopt -s nullglob
	for file in STANDARD_FILES do
		LASTLINE = ./MyProgram.exe < "$file"
		LASTLINE > "$file_o"
	done
shopt -u nullglob
