#!/bin/bash
# Install GITHELP

printf "\nInstall GitHelp?\n"
if [[ -d ~/GitHelp ]]; then
    printf "    Existing installation will be upgraded.\n"
    printf "    GitHelp repository configurations will be preserved.\n"
fi
read -p "Are you sure?  (y/n)   " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    printf "\nOperation canceled.\n\n"
    exit 1
fi

if [[ -a ~/.bash_profile ]]; then
    rm ~/.bash_profile
fi
if [[ -d ~/GitHelp ]]; then
    rm -rf ~/GitHelp
fi
cp -rf GitHelp ~/
cp GitHelp/bash_profile ~/.bash_profile

printf "\nWARNING:\n    Don't forget to update environment variables by running\n    source ~/.bash_profile\n\n"