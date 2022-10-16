#!/bin/bash
echo "Please enter path to backup"

read path

echo "Where to backup?"

read whereto

timestamp="$(date +'%b-%d-%y')"
sudo tar -cvpzf $whereto/backup-${timestamp}.tar.gz $path
