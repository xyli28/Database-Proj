#!/bin/bash

echo ===========================================
echo             Parsing Json Files            
echo ===========================================
sh ./runParser.sh

echo ===========================================
echo             Load Data to AuctionBase.db 
echo ===========================================
# Load data into database
rm AuctionBase.db
sqlite3 AuctionBase.db < create.sql
sqlite3 AuctionBase.db < load.txt

echo ===========================================
echo              Run Queries
echo ===========================================
for query in ./query*.sql
do
    sqlite3 AuctionBase.db < $query
done

echo ===========================================
echo              Clean Up
echo ===========================================
# Clean up
rm *.dat
rm AuctionBase.db
