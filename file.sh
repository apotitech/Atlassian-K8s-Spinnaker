#$/bin/bash
for f in `cat lit`; 
do `git clone ${f}`; 
done 