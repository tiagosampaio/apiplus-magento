#!/usr/bin/env bash

BUILDENV=`mktemp -d /tmp/magento.XXXXXXXX`
echo "Using build directory ${BUILDENV}"

# git clone https://github.com/tiagosampaio/Magento-${MAGENTO_VERSION}.git ${BUILDENV}
# echo "Clone was successfully done in ${BUILDENV}"

cd ${BUILDENV}

# Installing Modman
echo "Cloning modman"
curl -sO https://raw.github.com/colinmollenhour/modman/master/modman

#Installing n98-magerun
echo "Cloning n98-magerun"
curl -sO https://files.magerun.net/n98-magerun.phar

mkdir -p ${BUILDENV}/htdocs

php ./n98-magerun.phar install \
      --dbHost="localhost" --dbUser="root" --dbPass="" --dbName="magento" \
      --installSampleData=no \
      --useDefaultConfigParams=yes \
      --magentoVersionByName="${MAGENTO_VERSION}" \
      --installationFolder="${BUILDENV}/htdocs" \
      --baseUrl="http://magento.local/" || { echo "Installing Magento failed"; exit 1; }

cd ${BUILDENV}/htdocs

sh ../modman clone --copy https://github.com/tiagosampaio/ApiPlus.git
