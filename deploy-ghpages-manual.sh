#!/bin/bash

GH_REPO="@github.com:nalezyty/built-artifacts-oidc.git"
GH_TOKEN="c47e16dbfd0d3980a4d349ef92bebaa614933374"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

git init
git config user.name "nalezyty-travis"
git config user.email "travis"

git add .
git commit -m "deployed to github pages"
git push --force --quiet $FULL_REPO master
