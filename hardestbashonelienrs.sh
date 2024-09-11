#! usr/env/bin bash

#Hardest one of 2023: 
detex sop.tex |  sed -E 's|https?://[^ ]+||g' | wc -c

#Hardest one of 2024 so far:
find . -type d -name temprepo -prune -o -name '*.py' | xargs wc -l | tail -n1 | awk '{print$1}'

# Wed Sep 11 18:44:16 +04 2024 ~> :r !date
history | awk '{print $0}' | awk '{print NF, $0}' | sort -nr | head -n 50 
