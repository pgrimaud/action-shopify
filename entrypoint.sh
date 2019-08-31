#!/bin/sh

theme configure --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH $INPUT_ARGS
theme deploy
