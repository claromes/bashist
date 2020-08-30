#!/bin/bash

BODY=body.html

init() {
  echo "" > $BODY
}

show() {
  cat $BODY -n
}

delete() {
  sed -i "$1d" $BODY
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

if [ $1 == "-init" ]; then
    init
fi

case "$2" in
    -t | --title)
                title ${*:3}
                sed -i "$1i $H1_TAG" $BODY
    ;;
    -d | --description)
                desc ${*:3}
                sed -i "$1i $P_TAG" $BODY
    ;;
    -l | --list)
                list_desc ${*:3}
                sed -i "$1i $UL_TAG" $BODY
    ;;
    -s | --show)
                show
    ;;
    -del | --delete)
                delete ${*:2}
    ;;
esac