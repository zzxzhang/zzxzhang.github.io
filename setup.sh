#!/bin/bash
touch .alias.sh

echo alias setup="\"yum install -g git;ssh-keygen -f ~/.ssh/id_rsa1 -t rsa -N '';echo \$(cat ~/.ssh/id_rsa1.pub)\"" > .alias.sh

echo alias ct="\"git clone git@github.com:zzxzhang/vps.git\"" >> .alias.sh

echo source .alias.sh >> .bashrc
