# github-actions-learn
A repository to learn and test GH Actions

## Bagde Satus

    [![Super-Linter](https://github.com/lmcwhirt-insight/github-actions-learn/actions/workflows/.github/workflows/github-actions-sample-main.yml/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Install Super Linter Locally

    docker pull ghcr.io/super-linter/super-linter:latest

### Run against a repositiory locally

    docker run -e LOG_LEVEL=INFO -e RUN_LOCAL=true -e DEFAULT_BRANCH=main -v C:\gh\github-actions-learn:/tmp/lint --rm ghcr.io/super-linter/super-linter:latest

### Run against a single file

    docker run -e LOG_LEVEL=INFORMATION -e RUN_LOCAL=true -e DEFAULT_BRANCH=main -v C:\gh\github-actions-learn\eslint.config.js:/tmp/lint/eslint.config.js --rm ghcr.io/super-linter/super-linter:latest
