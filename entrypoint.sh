#!/bin/sh

ls -la
ls -la /
ls -la /github
ls -la /github/workflow
ls -la /github/workspace
pwd

theme version

theme configure -v --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH $*
theme deploy
