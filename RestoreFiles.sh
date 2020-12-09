#!/bin/bash
apt-get install unzip > /dev/null
cat phrase_* > phrase.zip
unzip phrase.zip x* > /dev/null
rm phrase.zip
cat xa* > phrase.txt
rm xa*
echo COMPLETE

