#!/bin/bash
# testing before publish
# purge dist
rm -fr dist
# babel transform es6 into es5
babel src --out-dir dist/npm/es5/src --copy-files
babel libs --out-dir dist/npm/es5/libs --copy-files
babel build/npm/index.js --out-file dist/npm/es5/index.js --copy-files
#export BABEL_ENV=production
babel src --out-dir dist/npm/es6/src --copy-files
babel libs --out-dir dist/npm/es6/libs --copy-files
# keep es6 for next.js
cp build/npm/next.js next.js