#!/usr/bin/env bash

function pack_project(){
  mkdir Dependency
  pipreqs --use-local . --force
  pip download -d ./Dependency -r requirements.txt

}
