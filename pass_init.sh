#!/bin/bash

PASSWORD_STORE_TOMB_FILE=./password.tomb 
PASSWORD_STORE_TOMB_KEY=./password.tomb.key 
PASSWORD_STORE_DIR=./password_store 

clear
gpg -K --with-subkey-fingerprint

GET_GPG=$(gpg -K --with-colons | awk -F: '/^fpr:/ { print $10 }' | fzf --height=8)
COMMAND_INIT_TOMB="pass tomb -f $GET_GPG"

# PASSWORD_STORE_TOMB_FILE=$PASSWORD_STORE_TOMB_FILE PASSWORD_STORE_TOMB_KEY=$PASSWORD_STORE_TOMB_KEY PASSWORD_STORE_DIR=$PASSWORD_STORE_DIR $COMMAND_INIT_TOMB

