#!/bin/bash

# git-snap-commit make-less installer script based heavily on
# the git-flow installer script
# Author: Mohammed Nafees, hello <at> mnafees <dot> me

# Derives from https://github.com/nvie/gitflow/blob/master/contrib/gitflow-installer.sh

if [ -z "$INSTALL_PREFIX" ] ; then
	INSTALL_PREFIX="/usr/local/bin"
fi

if [ -z "$REPO_NAME" ] ; then
	REPO_NAME="git-snap-commit"
fi

if [ -z "$REPO_HOME" ] ; then
	REPO_HOME="https://github.com/mnafees/git-snap-commit.git"
fi

EXEC_FILE="git-snap-commit"
JS_FILE="snap.js"

echo "### git-snap-commit no-make installer ###"

case "$1" in
	uninstall)
		echo "Uninstalling git-snap-commit from $INSTALL_PREFIX"
		if [ -d "$INSTALL_PREFIX" ] ; then
			for installed_file in $JS_FILE $EXEC_FILE ; do
				echo "rm -vf $INSTALL_PREFIX/$installed_file"
				rm -vf "$INSTALL_PREFIX/$installed_file"
			done
		else
			echo "The '$INSTALL_PREFIX' directory was not found."
			echo "Do you need to set INSTALL_PREFIX ?"
		fi
		exit
		;;
	help)
		echo "Usage: [environment] installer.sh [install|uninstall]"
		echo "Environment:"
		echo "   INSTALL_PREFIX=$INSTALL_PREFIX"
		exit
		;;
	install)
		if ! pjs="$(type -p "$phantomjs")" || [ -z "$pjs" ]; then
			echo "git-snap-commit depends on phantomjs, please install phantomjs"
			echo "and make sure it is in your PATH to continue installation"
			exit
		fi	
		echo "Installing git-snap-commit to $INSTALL_PREFIX"
		if [ -d "$REPO_NAME" -a -d "$REPO_NAME/.git" ] ; then
			echo "Using existing repo: $REPO_NAME"
		else
			echo "Cloning repo from GitHub to $REPO_NAME"
			git clone "$REPO_HOME" "$REPO_NAME"
		fi
		install -v -d -m 0755 "$INSTALL_PREFIX"
		for exec_file in $EXEC_FILE ; do
			install -v -m 0755 "$REPO_NAME/$exec_file" "$INSTALL_PREFIX"
		done
		for js_file in $JS_FILE ; do
			install -v -m 0644 "$REPO_NAME/$js_file" "$INSTALL_PREFIX"
		done
		exit 0
		;;
esac