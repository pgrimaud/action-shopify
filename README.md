# Deploy Shopify theme for GitHub Actions

### NEW since 2.2 : this action is now based on a pre-built image
```
Using a pre-built image saved 115% of time on this action set-up
```

⚠️ Docker image is located here : https://github.com/pgrimaud/docker-images/tree/master/themekit

## Description

This GitHub action is part of a list of my Actions : https://github.com/pgrimaud/actions.

**A GitHub Actions+Shopify workflow was proposed here : https://github.com/freyum/shopify-workflow-poc**

## Usage

To use the action simply add the following lines to your workflow .yml file.

```yaml
...
  steps:
      - uses: actions/checkout@v2
      - name: Shopify
        uses: pgrimaud/action-shopify@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_STORE_URL: ${{ secrets.SHOPIFY_STORE_URL }}
          SHOPIFY_THEME_ID: ${{ secrets.SHOPIFY_THEME_ID }}
          THEME_PATH: ${{ secrets.THEME_PATH }}
```

You can see a repository with this action here : https://github.com/pgrimaud/shopify-debut

### Required Secrets

First you have to generate a private app to get an API KEY on Shopify. [Get API Access](https://shopify.github.io/themekit/#get-api-access).

Then you'll need to provide some secrets to use the action.

* **SHOPIFY_PASSWORD**: Your password from your private app previously created.
* **SHOPIFY_STORE_URL**: Your store url. (e.g. `demo.myshopify.com`).
* **SHOPIFY_THEME_ID**: Your theme id on your Shopify Store.
* **THEME_PATH**: Path of your theme on your GitHub repository. If your theme is at the root of your repository, just use `./`.

### Optional Arguments

The optional argument you can add to improve theme deployment. Optional args are available on [Theme Kit help](https://shopify.github.io/themekit/configuration/#flags).

#### Examples

```yaml
...
  steps:
      - uses: actions/checkout@v2
      - name: Shopify
        uses: pgrimaud/action-shopify@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_STORE_URL: ${{ secrets.SHOPIFY_STORE_URL }}
          SHOPIFY_THEME_ID: ${{ secrets.SHOPIFY_THEME_ID }}
          THEME_PATH: ${{ secrets.THEME_PATH }}
        with:
          args: --ignored-file=sections/*
```

Your can also combine multiple arguments : 

```yaml
...
  steps:
      - uses: actions/checkout@v2
      - name: Shopify
        uses: pgrimaud/action-shopify@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_STORE_URL: ${{ secrets.SHOPIFY_STORE_URL }}
          SHOPIFY_THEME_ID: ${{ secrets.SHOPIFY_THEME_ID }}
          THEME_PATH: ${{ secrets.THEME_PATH }}
        with:
          args: --ignored-file=sections/* --timeout=30
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
