#!/bin/bash

lynx -cmd_script=./record_script1 -accept_all_cookies http://www.google.co.uk/search?q=discogs+$1

grep -A 10 Statistics 1 > $1.txt
rm 1
