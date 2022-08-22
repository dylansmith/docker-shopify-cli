# dylansmith/shopify-cli

## Description

A lightweight Shopify CLI container intended for CI, based on ruby:3-alpine.

This docker image can be used in CI environment to run Shopify CLI commands such as
[Theme Check](https://shopify.dev/themes/tools/theme-check) and many others. For the full Shopify
CLI reference, see [https://shopify.dev/themes/tools/cli/](https://shopify.dev/themes/tools/cli/).

## Usage example

From your terminal:

```sh
$ docker run -it --rm dylansmith/shopify-cli:2.22.0 shopify version
2.22.0
```

In CI (example based on CircleCI configuration):

```yaml
version: 2.1

executors:
  shopify:
    resource_class: small
    docker:
      - image: dylansmith/shopify-cli:2.22.0

jobs:
  theme_check:
    executor: shopify
    steps:
      - checkout
      - run: shopify theme check

...
```
