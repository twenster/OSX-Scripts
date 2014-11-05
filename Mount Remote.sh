#!/bin/bash
# Mount a remote folder through SSHFS
# On OSX, requires OSXfuse and SSHFS
# https://osxfuse.github.io

SSHUSER="user"
SERVER="127.0.0.1"

# Volume name
# The volume name is using the SSH user as Volume name,
# you may add a prefix
PREFIX="my prefix"

# Local folder where the remote connexion will be mounted.
FOLDER="/Users/<user>/$PREFIX_$USER"

# The script auto-creates the folder if it doesn't exist yet.
if [[ ! -d $FOLDER ]]; then
  mkdir $FOLDER
fi

# Mounts the remote server.
# The password will be asked as any SSH connexion.
sshfs $SSHUSER@$SERVER:/home/$SSHUSER $FOLDER -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname="$PREFIX $USER"
