#!/bin/bash

echo
echo ===========================================
echo             Parsing Json Files
echo ===========================================
sh ./runParser.sh

echo
echo ===========================================
echo             Load Data to AuctionBase.db
echo ===========================================
# Load data into database
sqlite3 AuctionBase.db < create.sql
sqlite3 AuctionBase.db < load.txt

echo Finished Loading

echo
echo ===========================================
echo              Run Queries
echo ===========================================
# Process all queries
for query in ./query*.sql
do
    sqlite3 AuctionBase.db < $query >> ./output.txt
done

if diff ./output.txt ./correct_output.txt; then
    echo "output mathes provided one"
else
    echo "output does not match provided one"
fi


echo
echo ===========================================
echo              Clean Up
echo ===========================================
# Clean up
rm *.dat
rm AuctionBase.db
rm ./output.txt

echo "All finished"
