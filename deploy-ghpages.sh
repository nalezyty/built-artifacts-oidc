#!/bin/bash


GH_REPO="@github.com/nalezyty/built-artifacts-oidc.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"


git checkout master
git init
git config user.name "nalezyty-travis"
git config user.email "travis"

git add oidc-mitoverlay/target/my-openid-connect-server.war
git commit -m "deployed war file to github pages"
git push --force --quiet $FULL_REPO master
