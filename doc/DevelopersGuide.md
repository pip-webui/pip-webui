# Pip.WebUI Developer's Guide

This document provides high-level instructions on how to build and test the project.

* [Environment Setup](#setup)
* [Installation](#install)
* [Building](#build)
* [Testing](#test)
* [Contributing](#contrib) 
* [Appendix](#appendix)

## <a name="setup"></a> Environment Setup

Must be installed **[Node.js](https://nodejs.org/)**. If not installed, you can download [here](https://nodejs.org/en/download/).

## <a name="install"></a> Installation

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


## <a name="appendix"></a> Appendix

### Gulp tasks available in **pip-webui**

- **gulp clean** - cleanup for all submodules
- **gulp build** - build for all submodules (make sure you did **bower install** in **pip-webui-lib**)
- **gulp version -v x.y.z** - Setting a new version for the parent module and all submodules
- **gulp checkin -m "Commit message"** - Git commit and push for the parent module and all submodules (use carefully!)
- **gulp release** - Setting current version tags and publishing binary releases
