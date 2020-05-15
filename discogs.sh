#!/bin/bash

exists=`find . -name $1.txt`

if ["$exists" eq ""]
then
	lynx -cmd_script=./record_script -accept_all_cookies http://www.google.co.uk/search?q=discogs+$1

	grep -A 10 Statistics 1 > Outputs/$1.txt
	rm 1

else
	echo "Search exists"

fi
