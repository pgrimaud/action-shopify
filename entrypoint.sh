#!/bin/sh

echo $INPUT_ARGS

cd $THEME_PATH

echo configure --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID $INPUT_ARGS
theme configure --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID $INPUT_ARGS

theme deploy
