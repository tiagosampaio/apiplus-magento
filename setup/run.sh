#!/bin/bash

# git clone https://github.com/tiagosampaio/Magento-${MAGENTO_VERSION}.git ${BUILDENV}
# echo "Clone was successfully done in ${BUILDENV}"

# Installing Modman
echo "Downloading Modman to ${BIN}"
curl -sO https://raw.github.com/colinmollenhour/modman/master/modman

#Installing n98-magerun
echo "Downloading n98-magerun to ${BIN}"
curl -sO https://files.magerun.net/n98-magerun.phar

BUILDENV=./install
echo "Using build directory ${BUILDENV}"

php ./n98-magerun.phar install \
      --dbHost="localhost" --dbUser="root" --dbPass="" --dbName="magento" \
      --installSampleData=no \
      --useDefaultConfigParams=yes \
      --magentoVersionByName="${MAGENTO_VERSION}" \
      --installationFolder="${BUILDENV}" \
      --baseUrl="http://magento.local/" || { echo "Installing Magento failed"; exit 1; }

cd ${BUILDENV}

sh ../modman clone --copy https://github.com/tiagosampaio/ApiPlus.git
