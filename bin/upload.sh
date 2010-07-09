#!/usr/bin/env bash

VERSION=`cat edpath_package/__init__.py | grep VERSION | cut -f 2 -d "'"`

SCRIPT=`which googlecode_upload.py`
WINSCRIPT=`cygpath -w "$SCRIPT"`

echo $WINSCRIPT

python "$WINSCRIPT" \
--project edpath \
--hgauth \
--summary "Standalone Windows executable." \
--labels Featured,Type-Executable,OpSys-Windows \
dist/edpath-windows-$VERSION.zip

