# MnemonicUSB
Mnemonic secure usb/sd storage

These scripts are designed to be run from TailsOS booted as a live image. They should be copied via a USB and ran offline so that they will not touch the internet. The purpose of this script is to split your mnemonic phrase into 2 or more parts and encypt those parts so they can be stored on seperate USB or SD cards. One would then need both USB/SD cards and to decrypt both to access your mnemonic phrase

CreateFiles.sh

-- This script will ask you to input a 12 word mnemonic phrase, it will then:
      - Split those into individual files
      - Zip and encrypt those files
      - Split the zip into 2 files
      
      
      These can then be stored on seperate USB/SD drives
      
RestoreFiles.sh

-- This script will restore the zip file parts and unecrypt them so you can access your mnemonic phrase
     
