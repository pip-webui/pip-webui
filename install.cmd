rem install global tools
rem npm install gulp-cli -g
rem npm install bower -g
rem npm install mocha -g
rem npm install typescript -g
rem npm install tsd -d
rem npm install typedoc -g

rem Get submodules
git submodule init
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull

rem Create folder for npm modules
mkdir node_modules

rem Make links of npm folder to each module
mklink /J pip-webui-lib\node_modules node_modules
mklink /J pip-webui-cssframework\node_modules node_modules
mklink /J pip-webui-csscomponents\node_modules node_modules
mklink /J pip-webui-core\node_modules node_modules
mklink /J pip-webui-themes\node_modules node_modules
mklink /J pip-webui-controls\node_modules node_modules
mklink /J pip-webui-dates\node_modules node_modules
mklink /J pip-webui-layouts\node_modules node_modules
mklink /J pip-webui-split\node_modules node_modules
mklink /J pip-webui-nav\node_modules node_modules
mklink /J pip-webui-errors\node_modules node_modules
mklink /J pip-webui-all\node_modules node_modules

rem Install 3rd party npm modules
npm install

rem Install 3rd party bower modules
cd pip-webui-lib
bower install
