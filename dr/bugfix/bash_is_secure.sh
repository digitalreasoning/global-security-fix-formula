if [ ! `env x='() { :;}; echo vulnerable' bash -c 'echo ""' 2>/dev/null | grep -c vulnerable` ];
then exit 1;
fi;
