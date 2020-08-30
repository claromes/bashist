#!/bin/bash

source index_var.sh

cat > index.html << EOF
<!--
Generated with Bashist in $(date '+%Y/%m/%d')
-->
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />

    <title>$TITLE</title>
    <meta name="description" content="$DESCRIPTION" />
    <meta name="keywords" content="$KEYWORD1, $KEYWORD2, $KEYWORD3">
    <meta name="copyright" content="© $YEAR $AUTHOR" />
    <meta name="theme-color" content="#2d0922">

    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Ubuntu+Mono&display=swap" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Ubuntu+Mono:wght@700&display=swap">
  </head>
  <body>
    <h1>~$ <span class="bar"></span></h1>
  </body>
</html>
EOF

sed -i "/<body>/ r body.html" index.html