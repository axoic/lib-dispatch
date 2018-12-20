#!/bin/bash

REPO_HOME=`echo $(cd $(dirname $0); pwd)`
LIBS_HOME=${REPO_HOME}/libs
TARGET_DIR=${REPO_HOME}/dist

if [ ! -d "${LIBS_HOME}" ]; then
    echo "Missing library folder"    
    exit 1
fi

if [ ! -d "${TARGET_DIR}" ]; then
    mkdir -p ${TARGET_DIR}
fi

cd ${LIBS_HOME}/android
zip -r dispatch-android.zip .
mv *.zip ${TARGET_DIR}

cd ${LIBS_HOME}/linux
zip -r dispatch-linux.zip .
mv *.zip ${TARGET_DIR}
