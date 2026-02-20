#!/bin/bash

# Этот скрипт автоматически добавляет Warpify (терминал Warp) в .bashrc
echo -e '\n# Auto-Warpify\n[[ "$-" == *i* ]] \\
        && printf '\''\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash", "uname": "'$(uname)'", "tmux": false }}\x9c'\'' ' >> ~/.bashrc
