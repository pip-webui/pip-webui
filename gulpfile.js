var fs = require('fs');
var gulp = require('gulp');
var async = require('async');
var exec = require('child_process').exec;

var pkg = require('./package.json');
var argv = require('minimist')(process.argv.slice(2));

var submodules = [
    'pip-webui-lib',
    'pip-webui-test',
    'pip-webui-css',
    'pip-webui-core',
    'pip-webui-rest',
    'pip-webui-controls',
    'pip-webui-layouts',
    'pip-webui-nav',
    'pip-webui-pictures',
    'pip-webui-documents',
    'pip-webui-locations',
    'pip-webui-composite',
    'pip-webui-errors',
    'pip-webui-entry',
    'pip-webui-help',
    'pip-webui-guidance',
    'pip-webui-settings',
    'pip-webui-support',
    'pip-webui-all'
];

function execTask(cwd, command) {
    return function(callback) {
        
        var options = {
            cwd: cwd
        };

        console.log("Executing: '" + command + "' at " + cwd);

        exec(command, options, function(err, stdout, stderr) {
            if (stdout) console.log(stdout);
            if (stderr) console.error(stderr);
            callback(err);
        });
    };
}

function parentTask(command) {
    return execTask('.', command);
}

function submodulesTask(command) {
    return function(callback) {
        async.eachSeries(
            submodules, 
            function(submodule, callback) {
                execTask('./' + submodule, command)(callback);
            },
            function (err) {
                callback(err);
            } 
        );
    };
}

function submodulesVersion(version) {
    return function(callback) {
        var allModules = ['.'];
        allModules = allModules.concat(submodules);

        async.eachSeries(
            allModules, 
            function(submodule, callback) {
                try {
                    var pkgFile = './' + submodule + '/package.json';

                    console.log("Updating version at '" + pkgFile + "'");

                    var pkg = require(pkgFile);
                    pkg.version = version;
                    pkg.private = false;
                    pkg.license = "MIT";

                    var pkgContent = JSON.stringify(pkg, null, 4);
                    fs.writeFile(pkgFile, pkgContent, callback);
                } catch (error) {
                    callback(error);
                }
            },
            function (err) {
                callback(err);
            } 
        );
    };
}

function globalCheckin(message) {
    return function(callback) {
        async.series([
            submodulesTask('git add -A .'),
            submodulesTask('git commit -am "' + message + '"'),
            submodulesTask('git push'),
            parentTask('git add -A .'),
            parentTask('git commit -am "' + message + '"'),
            parentTask('git push')
        ], callback);
    };
}

gulp.task('clean', submodulesTask('gulp clean'));
gulp.task('build', submodulesTask('gulp build'));

gulp.task('pull', function(callback) {
    async.series([
        parentTask('git pull origin master'),
        submodulesTask('git pull origin master')
    ], callback);
});

gulp.task('version', submodulesVersion(argv.v || pkg.version));

gulp.task('checkin', globalCheckin(argv.m || 'Global checking'));