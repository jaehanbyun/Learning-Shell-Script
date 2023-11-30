#!/bin/bash

language="Korean"

function learn() {
  
  local learn_language="English"
  echo "I am learining $learn_language"

}

function print() {
 
  echo "I can speack $1"

}

learn
print $language
print $learn_language
