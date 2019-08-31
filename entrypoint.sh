#!/bin/sh

ls -la
pwd

echo $SHOPIFY_STORE_URL
echo $SHOPIFY_THEME_ID
echo $THEME_PATH

theme configure --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH $*
theme deploy
