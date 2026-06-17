#!/bin/bash
# Fills the template with values

awk -v teamName="Example" \
    -v name1="xDragonMage" \
    -v name2="Jane Doe" \
    -v name3="John Doe" \
    -v date="$(date +"%m-%d-%Y %H:%M:%S")" \
    -v logName="$1" \
    -v totalLines="$2" \
    -v eventsCount="$3" \
    -v susIPs="$4" \
    -v rawEvent="$5" \
    '{
        gsub(/TEAM NAME/, teamName);
        gsub(/NAME1/, name1);
        gsub(/NAME2/, name2);
        gsub(/NAME3/, name3);
        gsub(/LOG/, logName);
        gsub(/DATE/, date);
        gsub(/TOTAL LINES/, totalLines);
        gsub(/EVENTS COUNT/, eventsCount);
        gsub(/SUSIPS/, susIPs);
        gsub(/RAW EVENT/, rawEvent);
        print
    }' template.txt
