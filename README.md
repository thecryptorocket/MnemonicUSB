# MnemonicUSB
Mnemonic secure usb/sd storage

These scripts are designed to be run from TailsOS booted as a live image (accessed from https://tails.boum.org/). Please note Tails needs to be configured with persistant storage to save the scripts and also additional software so that ZIP and UNZIP persist from when you run Install.sh.

The purpose of this script is to split your mnemonic phrase into 2 or more parts and encypt those parts so they can be stored on seperate USB or SD cards. One would then need both USB/SD cards and to decrypt both to access your mnemonic phrase

Install.sh

-- This script needs to be run once persistant storage has been configure. Once it has been run you need to check the box which says 'Install Everytime'

CreateFiles.sh

-- This script will ask you to input a 12 word mnemonic phrase, it will then:
      - Split those into individual files
      - Zip and encrypt those files
      - Split the zip into 2 files
      
      
      These can then be stored on seperate USB/SD drives
      
RestoreFiles.sh

-- This script will restore the zip file parts and unecrypt them so you can access your mnemonic phrase
