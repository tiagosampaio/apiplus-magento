#!/bin/bash

# git clone https://github.com/tiagosampaio/Magento-${MAGENTO_VERSION}.git ${BUILDENV}
# echo "Clone was successfully done in ${BUILDENV}"

BUILDENV=`mktemp -d /tmp/magento.XXXXXXXX`
echo "Using build directory ${BUILDENV}"

cd ${BUILDENV}

bash < <(curl -s -L https://raw.github.com/colinmollenhour/modman/master/modman-installer)

source ${HOME}/.profile

curl -sO https://files.magerun.net/n98-magerun.phar

php ./n98-magerun.phar install \
      --dbHost="localhost" --dbUser="root" --dbPass="" --dbName="magento" \
      --installSampleData=no \
      --useDefaultConfigParams=yes \
      --magentoVersionByName="${MAGENTO_VERSION}" \
      --installationFolder="${BUILDENV}" \
      --baseUrl="http://magento.local/" || { echo "Installing Magento failed"; exit 1; }

sudo chmod +x modman

ls -lah

sh modman link --copy ${TRAVIS_BUILD_DIR}
