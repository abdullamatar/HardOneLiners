#! /usr/env/bin bash

#Hardest one of 2023:
detex sop.tex |  sed -E 's|https?://[^ ]+||g' | wc -c

#Hardest one of 2024 so far:
find . -type d -name temprepo -prune -o -name '*.py' | xargs wc -l | tail -n1 | awk '{print$1}'

# Wed Sep 11 18:44:16 +04 2024 ~> :r !date
history | awk '{print $0}' | awk '{print NF, $0}' | sort -nr | head -n 50

# Mon Sep 16 06:25:04 PM +04 2024
find . -maxdepth 1 -type f ! -name claude* -exec mv {} gpt/;

# Tue Oct 15 10:35:02 +04 2024
ls ./ | awk 'BEGIN { printf "["; first=1 } { if (first) { printf "\"%s\"", $0; first=0 } else { printf ", \"%s\"", $0 } } END { print "]" }' | fish_clipboard_copy

# Sun Feb  9 12:57:38 +04 2025
find . -type f -name "*.py" -exec sed -i '1s|^|from __future__ import annotations\n|' {} +
