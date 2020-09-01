#!/bin/bash

BODY_FILE=body.html

init() {
  echo "" > $BODY_FILE
}

show() {
  cat $BODY_FILE -n
}

delete() {
  sed -i "$1 d" $BODY_FILE
}

title() {
  H1_TAG="<h1>~$ $*</h1>"
}

description() {
  P_TAG="<p>$*</p>"
}

list_description() {
  for i in $*
  do
    LI_TAG+="<li>$i</li>"
  done

  UL_TAG="<ul>$LI_TAG</ul>"
}

add_to_body() {
  tag=${*:2}

  sed -i "$1 i $tag" $BODY_FILE
}

case $1 in
    -t | --title)
      title ${*:3}
      add_to_body $2 $H1_TAG

    ;;
    -d | --description)
      description ${*:3}
      add_to_body $2 $P_TAG

    ;;
    -l | --list)
      list_description ${*:3}
      add_to_body $2 $UL_TAG
    ;;
    -i | --init)
      init
    ;;
    -s | --show)
      show
    ;;
    -del | --delete)
      delete $2
    ;;
    -g | --generate)
      bash ./index.sh
    ;;
esac