# Contributing to [Pip.WebUI framework](https://github.com/pip-webui/pip-webui)

Pip.WebUI is Enterprise Framework part of [Piplife](ttps://piplife.com)

## [Code of Conduct]()
 TBD
 
## Our Development Process

Some of the core team will be working directly on GitHub. These changes will be public from the beginning.

### `master` is unsafe

We will do our best to keep `master` in good shape, with tests passing at all times. But in order to move fast, we will make API changes that your application might not be compatible with.
We will do our best to communicate these changes and always version appropriately so you can lock into a specific version if need be.

### Test Suite

Use `gulp test` to run the full test suite with Karma.

Just make sure to run the whole test suite before submitting a pull request!

### Pull Requests

**Working on your first Pull Request?** 
You can learn how from this *free* series [How to Contribute to an Open Source Project on GitHub](https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github)

The core team will be monitoring for pull requests. From here, we'll need to get another person to sign off on the changes and then merge the pull request. For API changes we may need to fix internal uses, which could cause some delay. We'll do our best to provide updates and feedback throughout the process.

*Before* submitting a pull request, please make sure the following is done…

1. Fork the repo and create your branch from `master`.
2. If you've added code that should be tested, add tests!
3. If you've changed APIs, update the documentation.
4. Ensure the test suite passes (`gulp test`).
5. Make sure your code lints (`gulp js-lint`) - we've done our best to make sure these rules match our internal linting guidelines.
6. If you haven't already, complete the CLA.


## Bugs

### Where to Find Known Issues

We will be using GitHub Issues for our public bugs. We will keep a close eye on this and try to make it clear when we have an internal fix in progress. Before filing a new task, try to make sure your problem doesn't already exist.

### Reporting New Issues

The best way to get your bug fixed is to provide a reduced test case. jsFiddle, jsBin, and other sites provide a way to give live examples.

## How to Get in Touch

* Discussion forum - [Pip Dev Forum](https://groups.google.com/forum/#!forum/pipdevs)

## Meeting Notes

## Style Guide

Our linter will catch most styling issues that may exist in your code.
You can check the status of your code styling by simply running: `gulp js-lint`

However, there are still some styles that the linter cannot pick up. If you are unsure about something, looking at [Airbnb's Style Guide](https://github.com/airbnb/javascript) will guide you in the right direction.

### Code Conventions

* Use semicolons `;`
* Commas last `,`
* 4 spaces for indentation (no tabs)
* Prefer `'` over `"`
* `'use strict';`
* 80 character line length
* Write "attractive" code
* Do not use the optional parameters of `setTimeout` and `setInterval`

### Documentation

* Do not wrap lines at 80 characters

## License

By contributing to Pip.WebUI, you agree that your contributions will be licensed under MIT license.
