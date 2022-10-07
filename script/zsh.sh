#!/bin/sh

sudo apt update && sudo apt install -y git curl zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
