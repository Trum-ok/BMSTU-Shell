#!/bin/bash

echo -e '\n# Auto-Warpify\n[[ "$-" == *i* ]] && printf '\''\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash", "uname": "'$(uname)'", "tmux": false }}\x9c'\'' ' >> ~/.bashrc
