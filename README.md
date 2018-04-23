# Symantec-Uninstall
removing SEP from Mac OS 10

sep_installcheck.sh is the preinstall script for the munki package
if it returns 0, sep_postinstall.sh will run which executes the SymantecRmovalTool.command which was downloaded from Symantec
