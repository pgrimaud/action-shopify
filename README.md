# Shopify Theme for GitHub Actions

## Usage

To use the action simply add the following lines to your `.github/main.workflow`

![alt text](https://user-images.githubusercontent.com/1866496/52805959-17883a00-3088-11e9-9804-e5f2b2c4ad59.png)

```
action "Shopify" {
  uses = "pgrimaud/actions/shopify@master"
  args = ""
  secrets = [
    "SHOPIFY_PASSWORD",
    "SHOPIFY_STORE_URL",
    "SHOPIFY_THEME_ID",
    "THEME_PATH"
  ]
}
```

### Required Secrets

First you have to generate a private app to get an API KEY on Shopify. [Get API Access](https://shopify.github.io/themekit/#get-api-access).

Then you'll need to provide some secrets to use the action.

* **SHOPIFY_PASSWORD**: Your password from your private app previously created.
* **SHOPIFY_STORE_URL**: Your store url. (e.g. `demo.myshopify.com`).
* **SHOPIFY_THEME_ID**: Your theme id on your Shopify Store.
* **THEME_PATH**: Path of your theme on your GitHub repository. If your theme is at the root of your repository, just use `./`.

### Optional Arguments

The optionnal argument you can add to improve theme deployment. Optionnal args are available on [Theme Kit help](https://shopify.github.io/themekit/configuration/#flags).

#### Examples

* ```args = "--ignored-file=\"config/*\""```
* ```args = "--timeout=30"```

Your can also combine multiple arguments : 

* ```args = "--ignored-file=\"config/*\" --timeout=30"```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
