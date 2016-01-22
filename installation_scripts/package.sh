#!/bin/sh

SCRIPT_DIR=`dirname $0`

cd $SCRIPT_DIR

PACK_FILE=litespeed-cache

if [ -f "${PACK_FILE}.zip" ] ; then
	/bin/rm -f "${PACK_FILE}.zip" 
fi

#zip -r ${PACK_FILE} CHANGELOG.md README.md litespeed-cache/ 
zip -r ${PACK_FILE} litespeed-cache/ 


echo "new package built: "
ls -l ${PACK_FILE}.zip

