#!/bin/bash

pip3 uninstall -y tldr


sed -i "s|source \~\/terminal\_tools\/tools\_env\.sh||g" ~/.bashrc

rm -rf ~/terminal_tools
cd ~/
