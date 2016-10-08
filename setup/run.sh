#!/bin/bash

# git clone https://github.com/tiagosampaio/Magento-${MAGENTO_VERSION}.git ${BUILDENV}
# echo "Clone was successfully done in ${BUILDENV}"

BUILDENV=`mktemp -d /tmp/magento.XXXXXXXX`
echo "Using build directory ${BUILDENV}"

cd ${BUILDENV}

# Installing Modman
curl -sO https://raw.github.com/colinmollenhour/modman/master/modman

#Installing n98-magerun
curl -sO https://files.magerun.net/n98-magerun.phar

php ./n98-magerun.phar install \
      --dbHost="localhost" --dbUser="root" --dbPass="" --dbName="magento" \
      --installSampleData=no \
      --useDefaultConfigParams=yes \
      --magentoVersionByName="${MAGENTO_VERSION}" \
      --installationFolder="${BUILDENV}" \
      --baseUrl="http://magento.local/" || { echo "Installing Magento failed"; exit 1; }

sh ./modman link --copy ${TRAVIS_BUILD_DIR}
