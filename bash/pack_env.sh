#!/bin/bash
function zip_dependency() {
  zip -r Dependency.zip Dependency
  zip -m Dependency.zip requirements.txt
  #statements
}
# create requirements.txt
pipreqs --use-local . --force
# packup env
mkdir Dependency

pip download --no-index -r requirements.txt --progress-bar on -d ./Dependency

zip_dependency()
