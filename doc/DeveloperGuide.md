# Development and Testing Guide <br/> Pip.Services Template

This document provides high-level instructions on how to build and test the library.

* [Environment Setup](#setup)
* [Installing](#install)
* [Building](#build)
* [Testing](#test)
* [Contributing](#contrib) 

## <a name="setup"></a> Environment Setup

Must be installed **[Node.js](https://nodejs.org/)**. If not installed, you can download [here](https://nodejs.org/en/download/).

## <a name="install"></a> Installing

TBD...

## <a name="build"></a> Building

Developers can easily build the project using NPM and gulp.

First install or update your local project's **npm** tools:

```bash
# First install all the NPM tools:
npm install

# Or update
npm update
```

Then run the **gulp** tasks:

```bash
# To clean '/build' and '/dist' directories
gulp clean

# To build distribution files in the `/dist` directory
gulp build
```

## <a name="test"></a> Testing
Run **gulp** task:

```bash
# to test 
gulp test

# for linting codestyle
gulp js-lint
```


## <a name="contrib"></a> Contributing

Developers interested in contributing should read the following guidelines:

* [Issue Guidelines](https://github.com/pip-webui/pip-webui/blob/master/doc/Contributing.md#bugs)
* [Contributing Guidelines](https://github.com/pip-webui/pip-webui/blob/master/doc/Contributing.md)
* [Coding guidelines](https://github.com/pip-webui/pip-webui/blob/master/doc/Contributing.md#style-guide)

It is important to note that for each release, the [ChangeLog](../CHANGELOG.md) is a resource that will
itemize all:

- Bug Fixes
- New Features
- Breaking Changes