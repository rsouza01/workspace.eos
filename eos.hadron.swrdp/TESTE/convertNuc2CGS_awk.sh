#!/bin/bash

clear

echo "=============================================================================================="
echo "Converting EOS's..."
echo "=============================================================================================="


for _FILE_NAME in *.csv; do 

    echo "Converting ${_FILE_NAME}..."

    ./convertNUC2CGS.awk  ${_FILE_NAME} >>  ${_FILE_NAME}.CGS.csv 

    
done


echo "=============================================================================================="
echo "Done!"
echo "=============================================================================================="
