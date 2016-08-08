var gulp = require('gulp');

// Add submodules tasks
require('pip-webui-tasks').submodules();

gulp.task('init', ['submodules-init', 'submodules-link']);
gulp.task('link', ['submodules-link']);

gulp.task('build', ['submodules-build']);
gulp.task('clean', ['submodules-clean']);

gulp.task('pull', ['submodules-checkout']);
gulp.task('checkout', ['submodules-checkout']);
gulp.task('push', ['submodules-checkin']);
gulp.task('checkin', ['submodules-checkin']);
gulp.task('commit', ['submodules-checkin']);

gulp.task('version', ['submodules-version']);
gulp.task('publish', ['submodules-publish']);
