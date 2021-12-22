#!/bin/sh

echo "Starting installation of VueSandbox tool..."

# Check for Git command
command -v git >/dev/null 2>&1 || {
  echo >&2 "'git' could not be found. Please install it first: sudo apt install git"; exit 1;
}

# Package installation
pkg_repo="git@github.com:mekkanix/mekkanix.github.io.git"
git clone $pkg_repo
