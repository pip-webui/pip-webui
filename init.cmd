rem Get submodules
git submodule init
git submodule update
git submodule foreach git checkout master
git submodule foreach git pull

rem Create folder for npm modules
mkdir node_modules

rem Make module links in npm folder 
rem mklink /J node_modules\pip-webui-lib pip-webui-lib
rem mklink /J node_modules\pip-webui-test pip-webui-test
rem mklink /J node_modules\pip-webui-css pip-webui-css
rem mklink /J node_modules\pip-webui-core pip-webui-core
rem mklink /J node_modules\pip-webui-rest pip-webui-rest
rem mklink /J node_modules\pip-webui-controls pip-webui-controls
rem mklink /J node_modules\pip-webui-layouts pip-webui-layouts
rem mklink /J node_modules\pip-webui-nav pip-webui-nav
rem mklink /J node_modules\pip-webui-pictures pip-webui-pictures
rem mklink /J node_modules\pip-webui-documents pip-webui-documents
rem mklink /J node_modules\pip-webui-locations pip-webui-locations
rem mklink /J node_modules\pip-webui-composite pip-webui-composite
rem mklink /J node_modules\pip-webui-errors pip-webui-errors
rem mklink /J node_modules\pip-webui-entry pip-webui-entry
rem mklink /J node_modules\pip-webui-help pip-webui-help
rem mklink /J node_modules\pip-webui-guidance pip-webui-guidance
rem mklink /J node_modules\pip-webui-settings pip-webui-settings
rem mklink /J node_modules\pip-webui-support pip-webui-support
rem mklink /J node_modules\pip-webui pip-webui

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
