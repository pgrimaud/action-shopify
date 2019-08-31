#!/bin/sh

ls -la
ls -la /
pwd

theme version

theme configure -v --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH $*
theme deploy
