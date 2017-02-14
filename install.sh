#/bin/bash
### install global tools
# npm install gulp-cli -g
# npm install bower -g
# npm install mocha -g
# npm install typescript -g
# npm install tsd -d
# npm install typedoc -g

### Get submodules
git submodule init
git submodule update --remote
git submodule foreach git checkout master
git submodule foreach git pull

### Create folder for npm modules
mkdir

### Make links of npm folder to each module
ln -s "$(pwd)/node_modules" ./pip-webui-lib/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-css/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-landing/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-headers/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-services/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-themes/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-behaviors/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-controls/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-buttons/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-lists/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-dialogs/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-dates/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-charts/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-layouts/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-split/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-nav/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-errors/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-locations/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-files/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-dashboard/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-settings/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-help/node_modules
ln -s "$(pwd)/node_modules" ./pip-webui-all/node_modules

### Install 3rd party npm modules
npm install

## Install 3rd party bower modules
cd ./pip-webui-lib
bower install
