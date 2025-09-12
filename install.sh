#!/bin/bash

echo "Hello World alee!" > /tmp/hello

cat >> ~/.bashrc <<'EOF'
# --- DevPod terminal sanity (TERM & backspace) ---
if ! infocmp alacritty >/dev/null 2>&1; then
  export TERM=xterm-256color
fi
if [[ $- == *i* ]] && [ -t 0 ]; then
  stty erase ^? 2>/dev/null || stty erase ^H 2>/dev/null
fi
# --- end ---
EOF


echo "alias ll='ls -la --color=auto'" >> ~/.bashrc
echo "set -o vi" >> ~/.bashrc

