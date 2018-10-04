#!/bin/bash

rm Item.dat
rm Category.dat
rm User.dat
rm Bid.dat

python my_parser.py ebay_data/items-*.json

sort Item.dat | uniq > item.txt
mv item.txt Item.dat
sort Category.dat | uniq  > category.txt
mv category.txt Category.dat
sort User.dat | uniq > user.txt
mv user.txt User.dat
sort Bid.dat | uniq > bid.txt
mv bid.txt Bid.dat

