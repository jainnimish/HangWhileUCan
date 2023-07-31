# HangWhileUCan
A simple hangman game written in shell. Queries a REST API hosted on ReplIt for words.

## Setup

The ReplIt API will not activate anymore (because of their slow dino mode). You can create your own API to query for the word and then call it instead by changing line 45 of the `hang` script inside `hangman/HangWhileUCan.app/Contents/Resources/app/bin`.

You can then build your own `.pkg` file by running `build_script.sh`. Run the installer to download the game. The command to start the game is:

    hang

## Goals

The main goals of this project were to learn the basics of scripting and regex,specifically, `sed`, `awk`, `grep`, and other common commands. Also wanted to learn deployment procedures and practices for deploying on different OS's.

## Todo

- Deploy on Windows and Linux.


