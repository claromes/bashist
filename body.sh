#!/bin/bash

BODY_FILE=body.html

init() {
  echo "" > $BODY_FILE
}

show() {
  cat $BODY_FILE -n
}

delete() {
  sed -i "$1d" $BODY_FILE
}

title() {
  H1_TAG="<h1>~$ $@</h1>"
}

desc() {
  P_TAG="<p>$@</p>"
}

list_desc() {
  for i in $@
  do
    LI_TAG+="<li>$i</li>"
  done

  UL_TAG="<ul>$LI_TAG</ul>"
}

add_to_body() {
  nl=$1
  tag=$2
  file=$3

  sed -i "$nl i $tag" $file
}

if [ $1 == "-init" ]; then
    init
fi

case "$2" in
    -t | --title)
                title ${*:3}
                add_to_body $1 $H1_TAG $BODY_FILE

    ;;
    -d | --description)
                desc ${*:3}
                add_to_body $1 $P_TAG $BODY_FILE

    ;;
    -l | --list)
                list_desc ${*:3}
                add_to_body $1 $UL_TAG $BODY_FILE
    ;;
    -s | --show)
                show
    ;;
    -del | --delete)
                delete ${*:2}
    ;;
esac