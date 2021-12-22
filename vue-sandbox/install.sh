#!/bin/sh

# Vars
pkg_repo="git@github.com:mekkanix/vue-sandbox.git"
pkg_version="1.0.0-beta.1"

echo "+--------------------------------------+"
echo "| VueSandbox installer - v$pkg_version |"
echo "+--------------------------------------+"

echo "> Starting installation of VueSandbox..."

# Check for required commands (git, node, npm)
command -v git >/dev/null 2>&1 || {
  echo >&2 "> 'git' is missing: installing...";
  sudo apt install git
}
command -v nodejs >/dev/null 2>&1 || {
  echo >&2 "> 'nodejs' is missing: installing...";
  sudo apt install nodejs
}
command -v npm >/dev/null 2>&1 || {
  echo >&2 "> 'npm' is missing: installing...";
  sudo apt install npm
}

# Package installation
git clone $pkg_repo

cd vue-sandbox/

echo "---"
echo "> Building..."

sh ./install.sh
