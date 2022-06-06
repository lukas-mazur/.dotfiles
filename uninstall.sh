#!/bin/bash

pip3 uninstall -y tldr

sed -i "s|.*/tools_env.sh||g" ~/.bashrc
sed -i "s|.*/bash_settings.sh||g" ~/.bashrc

rm terminal_tools -rf

