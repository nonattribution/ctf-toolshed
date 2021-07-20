#!/bin/bash

if [ -z "$1" ]
  then
    echo "No argument supplied"
    echo " decode the base64-encoded string seen above and prettify the HTML with xmllint."
    echo "Usage:  ./pretty.sh base64  "
    echo "example: "
    echo  "./pretty.sh PCFET0NUWVBFIGh0bWw+CjxodG1sPgo8aGVhZD4KICA8dGl0bGU+U2VjdXJpdHkgUmVwb3J0PC90aXRsZT4KICA8c3R5bGU+CiAgICB0YWJsZSwgdGgsIHRkIHsKICAgICAgYm9yZGVyOiAxcHggc29saWQgYmxhY2s7CiAgICB9CiAgPC9zdHlsZT4KPC9oZWFkPgo8Ym9keT4KPGg0PkxvZ2dlZCBYU1MgYXR0ZW1wdHM8L2g0Pgo8dGFibGU+CiAgPHRoZWFkPgogICAgPHRyPgogICAgICA8dGQ+VGltZXN0YW1wPC90ZD4KICAgICAgPHRkPlVzZXIgQWdlbnQ8L3RkPgogICAgICA8dGQ+SVAgQWRkcmVzczwvdGQ+CiAgICA8L3RyPgogIDwvdGhlYWQ+Cjx0Ym9keT4KPC90Ym9keT4KPC9ib2R5Pgo8L2h0bWw+Cg== "
  else
    echo $1 | base64 -d | xmllint --pretty 2 --html --nowarning -

  fi
  echo
  echo "___________________________________"
  echo "done"
  exit 0;
