#!/bin/bash

echo "Hello World!" > /tmp/hello

echo "if ! infocmp alacritty >/dev/null 2>&1; then; export TERM=xterm-256color; fi" >> ~/.bashrc

echo "stty erase ^? 2>/dev/null || stty erase ^H 2>/dev/null" >> ~/.bashrc
