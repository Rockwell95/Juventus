#!/bin/bash
front="../../Phase6_unified/frontend/Phase6_frontend_unix"
backdir="../../Phase6_unified/"
backrun="Phase4.Main"
day="day$1"
masterAccount="../../Phase6_unified/$day/master_accounts.txt"
masterTransaction="../../Phase6_unified/$day/transConcat.txt"

cd $day
#Loop through input files for front end
for f in *.in;
do
	actOut=../${f%%.*}.out
	$front < $f > $actOut
	echo $f
	rm ../${f%%.*}.out
done
#concmt transaction file
cat trans*.txt > transConcat.txt
#back end
java -cp $backdir $backrun $masterAccount $masterTransaction

#rm transConcat.txt
