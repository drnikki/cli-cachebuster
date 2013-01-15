#!/bin/bash

# redic replace placeholder never to appear in code organically
OLDVALUE="REPLACEMEWITHTAGFORSTUPIDCACHE" 
# coming straight from the commandline
NEWVALUE="$1" 

TFILE="/tmp/out.tmp"

dir='/your/directory/here/okay'
# loop designed to skip .svn files, because everything about this project is backwards.
files="$(find -L $dir -path '*/.svn' -prune -o  -type f)"
echo "Count: $(echo -n "$files" | wc -l)"
echo "$files" | while read file; do
  if [ -r $file ]; then
    # the old sed syntax.  lord knows how old these servers are.    
    sed "s/$OLDVALUE/$NEWVALUE/g" "$file" > "$TFILE"
    mv "$TFILE" "$file"
  else
   echo "Error: Cannot read $file"
  fi
done
