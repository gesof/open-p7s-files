#!/bin/sh

###################################################################
#Script Name	: run-p7s.sh                                                                                              
#Description	: Convert p7s files into readable format. Tested on MacOs 10.14.6                                                                                
#Args           : $filename                                                                                          
#Author       	: Gesof                                             
#Email         	: office@acron.ro                                        
###################################################################

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Use it as: \n$0 filename"
fi

filename=$1
outname=${filename/\.p7s/}

openssl smime -in "$filename" -verify -noverify -inform DER  -out "$outname"

echo "File saved as $outname\n"
