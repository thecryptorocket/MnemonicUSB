#!/bin/bash
cat phrase_* > phrase.zip
unzip phrase.zip x* > /dev/null
rm phrase.zip
cat xa* > phrase.txt
rm xa*
echo COMPLETE

