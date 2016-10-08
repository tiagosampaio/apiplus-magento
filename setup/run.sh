#!/bin/bash

bash < <(curl -s -L https://raw.github.com/colinmollenhour/modman/master/modman-installer)

source ${HOME}/.profile

BUILDENV=`mktemp -d /tmp/magento.XXXXXXXX`

cd ${BUILDENV}

curl -sO https://files.magerun.net/n98-magerun.phar

php ./n98-magerun.phar install \
      --dbHost="localhost" --dbUser="root" --dbPass="" --dbName="magento" \
      --installSampleData=no \
      --useDefaultConfigParams=yes \
      --magentoVersionByName="${MAGENTO_VERSION}" \
      --installationFolder="${BUILDENV}" \
      --baseUrl="http://magento.local/" || { echo "Installing Magento failed"; exit 1; }

sudo chmod +x modman

modman init
modman link --copy ${TRAVIS_BUILD_DIR}

TESTSENV=${TRAVIS_BUILD_DIR}/dev/tests/apiplus

phpunit --bootstrap ${TESTSENV}/bootstrap.php ${TESTSENV}/tests
