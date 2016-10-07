#!/usr/bin/env bash

echo "Currently in ${WORKSPACE}..."

BUILDENV=`mktemp -d /tmp/magento.XXXXXXXX`
echo "Using build directory ${BUILDENV}"

git clone https://github.com/tiagosampaio/Magento-${MAGENTO_VERSION}.git ${BUILDENV}
echo "Clone was successfully done in ${BUILDENV}"

