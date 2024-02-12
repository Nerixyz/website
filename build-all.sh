#!/bin/bash

pnpm i;
pnpm run build;

pushd scripts;
pip3 install -r requirements.txt;
mkdocs build;
popd;

cp scripts/site/* dist/;
