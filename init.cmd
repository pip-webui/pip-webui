rem install global tools
npm install gulp-cli -g
npm install bower -g
npm install mocha -g
npm install typescript -g
npm install tsd -d
npm install typedoc -g

rem Get submodules
git submodule init
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull

rem Create folder for npm modules
mkdir node_modules

rem Make links of npm folder to each module
mklink /J pip-webui-lib\node_modules node_modules
mklink /J pip-webui-test\node_modules node_modules
mklink /J pip-webui-css\node_modules node_modules
mklink /J pip-webui-core\node_modules node_modules
mklink /J pip-webui-rest\node_modules node_modules
mklink /J pip-webui-controls\node_modules node_modules
mklink /J pip-webui-layouts\node_modules node_modules
mklink /J pip-webui-nav\node_modules node_modules
mklink /J pip-webui-pictures\node_modules node_modules
mklink /J pip-webui-documents\node_modules node_modules
mklink /J pip-webui-locations\node_modules node_modules
mklink /J pip-webui-composite\node_modules node_modules
mklink /J pip-webui-errors\node_modules node_modules
mklink /J pip-webui-entry\node_modules node_modules
mklink /J pip-webui-help\node_modules node_modules
mklink /J pip-webui-guidance\node_modules node_modules
mklink /J pip-webui-settings\node_modules node_modules
mklink /J pip-webui-support\node_modules node_modules
mklink /J pip-webui\node_modules node_modules

rem Install 3rd party npm modules
npm install

rem Install 3rd party bower modules
cd pip-webui-lib
bower install