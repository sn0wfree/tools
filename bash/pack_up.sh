#!/usr/bin/env bash

function pack_project(){
  mkdir Dependency
  pipreqs --use-local . --force
  pip download -d ./Dependency -r requirements.txt

}

function install_package(){
Path=./Dependency
Pip install --no-index --find-links=${path} -r requirements.txt

}

function unzip_dependency(){
unzip  Dependency.zip

}

function zip_dependency(){
pipreqs --use-local . --force
zip -r Dependency.zip Dependency
zip -m Dependency.zip requirements.txt
 

}

echo $1
if [[ $1 -eq 0 ]]; then
echo ‘package mode enable’
pack_project
zip_dependency

fi 

if [[ $1 -eq 1 ]]; then
echo ‘install mode enable’
unzip_dependency
install_package
fi 
