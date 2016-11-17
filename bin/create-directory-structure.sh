#!/bin/bash

function usage
{
  echo "Usage: $0 <competition-name>"
  exit 1
}

if [[ "$#" -ne 1 ]];
then
  usage
fi

rootFolder=competitions/$1

if [[ -d $rootFolder ]];
then
  echo "Directory already exits :("
  echo "Please pick another name!"
  exit 1
fi

mkdir $rootFolder

touch $rootFolder/README.md
echo "# TODO" >> $rootFolder/README.md
touch $rootFolder/__init__.py
touch $rootFolder/main.py
touch $rootFolder/requirements.txt

mkdir $rootFolder/model
touch $rootFolder/model/__init__.py

mkdir $rootFolder/utilities
touch $rootFolder/utilities/__init__.py
