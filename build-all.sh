#!/bin/bash

pnpm i;
pnpm run build;

pushd scripts;
python -m venv venv;
source venv/bin/activate;
pip3 install -r requirements.txt;
mkdocs build;
popd;

cp -r scripts/site/* dist/;
