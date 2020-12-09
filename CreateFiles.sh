#!/bin/bash
touch phrase.txt
echo Please enter your mnemonic phrase:
read word1 word2 word3 word4 word5 word6 word7 word8 word9 word10 word11 word12
echo Your first word is: $word1
echo $word1 >> phrase.txt
echo Your second word is: $word2
echo $word2 >> phrase.txt
echo Your third word is: $word3
echo $word3 >> phrase.txt
echo Your fouth word is: $word4
echo $word4 >> phrase.txt
echo Your fifth word is: $word5
echo $word5 >> phrase.txt
echo Your sixth word is: $word6
echo $word6 >> phrase.txt
echo Your seventh word is: $word7
echo $word7 >> phrase.txt
echo Your eighth word is: $word8
echo $word8 >> phrase.txt
echo Your ninth word is: $word9
echo $word9 >> phrase.txt
echo Your tenth word is: $word10
echo $word10 >> phrase.txt
echo Your eleventh word is: $word11
echo $word11 >> phrase.txt
echo Your twelfth word is: $word12
echo $word12 >> phrase.txt
while true; do
    read -p "IS YOUR MNEMONIC PHRASE CORRECT? [y/n]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) rm phrase.txt;exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo UPDATING SOURCE THIS MAY TAKE A WHILE ... PLEASE WAIT ...
sudo apt-get update
echo UPDATE COMPLETE
sudo apt-get install zip -y
split -l 1 phrase.txt
echo PLEASE ENTER PASSWORD TO ENCRPYT THE ZIP FILE
zip -e phrase.zip x* > /dev/null
rm x*
rm phrase.txt
split -n 2 --additional-suffix=.zip phrase.zip phrase_
rm phrase.zip
