var gulp = require('gulp');
var async = require('async');
var exec = require('child_process').exec;

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
    'pip-webui'
];

function submoduleTask(command) {
    return function(callback) {
        async.eachSeries(
            submodules, 
            function(submodule, callback) {
                var options = {
                    cwd: './' + submodule
                };
                exec('gulp build', options, function(err, stdout, stderr) {
                    if (stdout) console.log('stdout: ' + stdout);
                    if (stderr) console.log('stderr: ' + stderr);
                    callback(err);
                });
            },
            function (err) {
                callback(err);
            } 
        );
    };
}

gulp.task('clean', submoduleTask('gulp clean'));
gulp.task('build', submoduleTask('gulp build'));