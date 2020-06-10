#!/bin/bash

cat 2007.csv /sed 's/ /, /g' |cut -d',' -f 15,17 2007.csv| grep "SFO" |head -n3>h1.csv
(echo " ArrDelay,Origin">h2.csv)
cat h2.csv h1.csv > first3sfo.csv
csvlook first3sfo.csv

cat 2007.csv /sed 's/ /, /g' |cut -d',' -f 18 2007.csv|sort|uniq -c|sort -nr|head -n3> L1.csv
(echo " Number Destination">L2.csv)
cat L2.csv L1.csv > top3.csv
csvlook top3.csv









