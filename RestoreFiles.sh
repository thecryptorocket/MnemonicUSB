#!/bin/bash
echo UPDATING SOURCE THIS MAY TAKE A WHILE ... PLEASE WAIT ...
sudo apt-get update
echo UPDATE COMPLETE
sudo apt-get install unzip 
cat phrase_* > phrase.zip
unzip phrase.zip x* > /dev/null
rm phrase.zip
cat xa* > phrase.txt
rm xa*
echo COMPLETE

