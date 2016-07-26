Our QuickStart goal is to build and run a super-simple application with Pip.WebUI Framework, and establish a development environment for the remaining documentation 
samples that also can be the foundation for real world applications.

###Try it!

Try the [live example]() which loads the sample app in plunker and displays:

##Build this app!

 - [Prerequisite](#prerequisite) Install Node.js


### <a name="prerequisite">Prerequisite: Node.js</a>

Install Node.js® and npm if they are not already on your machine.

<p style="padding: 10px 30px 10px; border-left: 4px solid #8BC34A"> Verify that you are running at least node v4.x.x and npm 3.x.x 
or older by running node -v and npm -v in a terminal/console window. </p> 

###<span style="text-transform: uppercase;">Download the source</span>

Instead of following each step of these instructions, we can [download] the QuickStart source from github and follow its brief instructions.

**Step 1:** Create and configure the project

In this step we:

- [(a) Create the project folder](#step1-a)
- [(b) Add package definition and configuration files](#step1-a)
- [(c) Install packages](#step1-c)

**<a name="step1-a">(a) Create the project folder</a>**
```bash
mkdir pipwebui-quickstart
cd    pipwebui-quickstart
```

**<a name="step1-b">(b) Add package definition and configuration files</a>**

Create **package.json**
```
    {
      "name": "pipwebui-quickstart",
      "version": "1.0.0",
      "scripts": {
        "build": "gulp build",
        "lint": "gulp lint",
        "samples": "gulp launch",
        "test": "karma start"
      },
      "dependencies": {
      },
      "devDependencies": {
        "pip-webui-lib": "git+https://github.com/pip-webui/pip-webui-lib.git",
        "pip-webui-css": "git+https://github.com/pip-webui/pip-webui-css.git",
        "pip-webui-core": "git+https://github.com/pip-webui/pip-webui-core.git",
        "pip-webui-rest": "git+https://github.com/pip-webui/pip-webui-rest.git",
        "pip-webui-layouts": "git+https://github.com/pip-webui/pip-webui-layouts.git",
        "pip-webui-controls": "git+https://github.com/pip-webui/pip-webui-controls.git",
        "pip-webui-nav": "git+https://github.com/pip-webui/pip-webui-nav.git",
        "pip-webui-locations": "git+https://github.com/pip-webui/pip-webui-locations.git",
        "pip-webui-documents": "git+https://github.com/pip-webui/pip-webui-documents.git",
        "pip-webui-pictures": "git+https://github.com/pip-webui/pip-webui-pictures.git",
        "pip-webui-composite": "git+https://github.com/pip-webui/pip-webui-composite.git",
        "pip-webui-entry": "git+https://github.com/pip-webui/pip-webui-entry.git",
        "pip-webui-errors": "git+https://github.com/pip-webui/pip-webui-errors.git",
        "pip-webui-settings": "git+https://github.com/pip-webui/pip-webui-settings.git",
        "pip-webui-guidance": "git+https://github.com/pip-webui/pip-webui-guidance.git",
        "pip-webui-help": "git+https://github.com/pip-webui/pip-webui-help.git",
        "pip-webui-support": "git+https://github.com/pip-webui/pip-webui-support.git"
      }
    }
```

Create **gulpfile.js** and write:
```text
var gulp = require('gulp');
 
require('pip-webui-tasks').all();
    
gulp.task('build', ['build-dev', 'build-prod']);
gulp.task('rebuild', ['build-dev']);
gulp.task('clean', ['build-clean']);
gulp.task('watch', ['build-watch']);
gulp.task('jshint', ['test-jshint']);
gulp.task('launch', ['samples-launch']);
gulp.task('publish', ['samples-publish']);

gulp.task('default', ['build']);
```

On line 3 
```javascript
require('pip-webui-tasks').all();
```

import all gulp tasks from tasks repository. _build-dev_, _build-clean_,_build-watch_ and etc from **pip-webui-tasks**.
More information about tasks you can find [here](https://github.com/pip-webui/pip-webui-tasks).
Create **build.conf.js** and write:
```
module.exports = {
    module: {
        name: 'pipPictures',
        index: 'pictures'
    },
    build: {
        js: true,
        ts: false,
        html: true,
        css: true,
        lib: true,
        images: true
    },
    samples: {
        port: 8099,
        publish: {
            bucket: 'my_backet',
            accessKeyId: 'XXXXXXXXXXXXXXXXXX',
            secretAccessKey: 'xxxxxxxxxxxxxxxxxxxxxxxxxxx',
            region: 'us-west-1'
        },
    }
};
```

**<a name="step1-c">(c) Install packages</a>**
Before install packages install global _gulp_
```bash
npm install gulp -g && npm install gulp --save-dev
```
and then install dependencies
```bash
npm install
```
After installation you must _node_modules_ folder in project folder.


After _build-dev_
```bash
gulp build
```
in your project folder will be **lib** folder with sources of Pip.WebUI components.

Let's create anything. For example simple dialog window.
First of all create **index.html**
```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="-1">
    <title>Get started with Pip.WebUI</title>

    <link rel="stylesheet" href="lib/pip-webui-lib.css"/>
    <link rel="stylesheet" href="lib/pip-webui-css.css"/>
    <link rel="stylesheet" href="lib/pip-webui-layouts.css"/>
    <link rel="stylesheet" href="lib/pip-webui-nav.css"/>
    <link rel="stylesheet" href="lib/pip-webui-entry.css"/>
    <link rel="stylesheet" href="lib/pip-webui-locations.css"/>
    <link rel="stylesheet" href="lib/pip-webui-pictures.css"/>
    <link rel="stylesheet" href="lib/pip-webui-controls.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">


    <script src="https://www.google.com/jsapi"></script>
    <script src="lib/pip-webui-lib.js"></script>
    <script src="lib/pip-webui-core.js"></script>
    <script src="lib/pip-webui-rest.js"></script>
    <script src="lib/pip-webui-layouts.js"></script>
    <script src="lib/pip-webui-pictures.js"></script>
    <script src="lib/pip-webui-locations.js"></script>
    <script src="lib/pip-webui-entry.js"></script>
    <script src="lib/pip-webui-nav.js"></script>
    <script src="lib/pip-webui-controls.js"></script>

</head>
<body>
<div ng-app="appBasicControls.ColorPicker" ng-controller="ColorPickerController">
    <pip-color-picker ng-model="color" ng-disabled="disabled" pip-colors="colors">
    </pip-color-picker>

</div>
<script charset="utf-8">
    (function (angular) {
        'use strict';

        var thisModule = angular.module('appBasicControls.ColorPicker', ['pipControls']);

        thisModule.controller('ColorPickerController',
                function ($scope) {
                    $scope.disabled = false;
                    $scope.colors = ['purple', 'lightgreen', 'green', 'darkred', 'pink', 'yellow', 'cyan'];
                    $scope.code = '<pip-color-picker ng-model="color" ng-disabled="disabled"' +
                            'pip-colors="colors"></pip-color-picker>';
                }
        );
    })(window.angular);
</script>
</body>
</html>
```