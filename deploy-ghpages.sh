#!/bin/bash

rm -rf out || exit 0;
mkdir out;

GH_REPO="@github.com:nalezyty/built-artifacts-oidc.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

git init
git config user.name "nalezyty-travis"
git config user.email "travis"

git add .
git commit -m "deployed to github pages"
git push --force --quiet $FULL_REPO master:gh-pages
