rem install global tools
rem npm3 install gulp-cli -g
rem npm3 install bower -g
rem npm3 install mocha -g
rem npm3 install typescript -g
rem npm3 install tsd -d
rem npm3 install typedoc -g

rem Get submodules
git submodule init
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull

rem Create folder for npm modules
mkdir node_modules

rem Make links of npm folder to each module
mklink /J pip-webui-lib\node_modules node_modules
mklink /J pip-webui-css\node_modules node_modules
mklink /J pip-webui-landing\node_modules node_modules
mklink /J pip-webui-headers\node_modules node_modules
mklink /J pip-webui-services\node_modules node_modules
mklink /J pip-webui-themes\node_modules node_modules
mklink /J pip-webui-behaviors\node_modules node_modules
mklink /J pip-webui-controls\node_modules node_modules
mklink /J pip-webui-buttons\node_modules node_modules
mklink /J pip-webui-lists\node_modules node_modules
mklink /J pip-webui-dialogs\node_modules node_modules
mklink /J pip-webui-dates\node_modules node_modules
mklink /J pip-webui-charts\node_modules node_modules
mklink /J pip-webui-layouts\node_modules node_modules
mklink /J pip-webui-split\node_modules node_modules
mklink /J pip-webui-nav\node_modules node_modules
mklink /J pip-webui-errors\node_modules node_modules
mklink /J pip-webui-locations\node_modules node_modules
mklink /J pip-webui-files\node_modules node_modules
mklink /J pip-webui-dashboard\node_modules node_modules
mklink /J pip-webui-settings\node_modules node_modules
mklink /J pip-webui-help\node_modules node_modules
mklink /J pip-webui-all\node_modules node_modules

rem Install 3rd party npm modules
npm3 install

rem Install 3rd party bower modules
cd pip-webui-lib
bower install
