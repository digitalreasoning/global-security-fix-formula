#!/bin/sh

which bash >/dev/null || exit 0;

if [ ! `env x='() { :;}; echo vulnerable' bash -c 'echo ""' 2>/dev/null | grep -c vulnerable` ];
then exit 1;
fi;

if [ ! `env X='() { (a)=>\' bash -c "echo hostname" &>/dev/null; cat echo 2>/dev/null | grep -c "$(hostname)"` ];
then exit 1;
fi;
