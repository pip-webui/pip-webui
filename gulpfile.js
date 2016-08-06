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

function execTask(cwd, command, force) {
    return function(callback) {
        
        var options = {
            cwd: cwd
        };

        console.log("Executing: '" + command + "' at " + cwd);

        exec(command, options, function(err, stdout, stderr) {
            if (stdout) console.log(stdout);
            if (stderr) console.error(stderr);

            if (!force) callback(err);
            else callback();
        });
    };
}

function parentTask(command, force) {
    return execTask('.', command, force);
}

function submodulesTask(command, force) {
    return function(callback) {
        async.eachSeries(
            submodules, 
            function(submodule, callback) {
                execTask('./' + submodule, command, force)(callback);
            },
            function (err) {
                callback(err);
            } 
        );
    };
}

function submodulesVersion(version) {
    function updateVersion(file) {
        if (fs.existsSync(file)) {
            console.log("Updating version at '" + file + "'");

            var obj = require(file);
            obj.version = version;

            var content = JSON.stringify(obj, null, 4);
            fs.writeFileSync(file, content);
        }
    }

    return function(callback) {
        var allModules = ['.'];
        allModules = allModules.concat(submodules);

        async.eachSeries(
            allModules, 
            function(submodule, callback) {
                try {
                    var pkgFile = './' + submodule + '/package.json';
                    updateVersion(pkgFile);

                    var bowerFile = './' + submodule + '/bower.json';
                    updateVersion(bowerFile);

                    callback();
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
            submodulesTask('git commit -am "' + message + '"', true),
            submodulesTask('git push'),
            parentTask('git add -A .'),
            parentTask('git commit -am "' + message + '"', true),
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

gulp.task('publish', function(callback) {
    var pkg = require('./package.json');

    async.series([
        submodulesTask('git tag v' + pkg.version),
        submodulesTask('git push --tags'),
        submodulesTask('npm publish'),
        parentTask('git tag v' + pkg.version),
        parentTask('git push --tags')
    ], callback);
});
