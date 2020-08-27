#!/bin/sh

theme download config/settings_data.json --password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --themeid=$SHOPIFY_THEME_ID --dir=$THEME_PATH $INPUT_ARGS
