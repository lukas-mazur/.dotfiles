#!/bin/bash

pip3 uninstall -y tldr

rm -rf ~/terminal_tools

sed -i "s|source \~\/terminal\_tools\/tools\_env\.sh||g" ~/.bashrc

