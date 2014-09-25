#!/bin/sh

which bash >/dev/null || exit 0;

if [ ! `env x='() { :;}; echo vulnerable' bash -c 'echo ""' 2>/dev/null | grep -c vulnerable` ];
then exit 1;
fi;
