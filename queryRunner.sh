#!/bin/bash

for query in ./query*.sql
do
    sqlite3 AuctionBase.db < $query
done
