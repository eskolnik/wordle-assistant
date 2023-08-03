#!/bin/bash
DIR=$(readlink -f "${BASH_SOURCE:-$0}" | xargs dirname)
IN_FILE="wordleHelper.js"
OUT_FILE="../bookmarklet.js"

uglifyjs ${DIR}/${IN_FILE} -o ${DIR}/${OUT_FILE} --compress
sed -i '' '1s/^/javascript:/' ${DIR}/${OUT_FILE} 

