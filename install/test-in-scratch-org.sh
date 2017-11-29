#!/usr/bin/env bash

export SFDX_AUTOUPDATE_DISABLE=true
export SFDX_USE_GENERIC_UNIX_KEYCHAIN=true
export SFDX_DOMAIN_RETRY=300
wget -qO- $URL | tar xJf -
"./sfdx/install"
export PATH=./sfdx/$(pwd):$PATH
sfdx update
sfdx force:auth:jwt:grant --clientid $CONSUMER_KEY --jwtkeyfile $TRAVIS_BUILD_DIR/assets/server.key --username $USERNAME --setdefaultdevhubusername -a HubOrg
sfdx force:org:create -v HubOrg -s -f $TRAVIS_BUILD_DIR/config/project-scratch-def.json -a ciorg
sfdx force:source:push -u ciorg
sfdx force:apex:test:run -u ciorg -c -r human
sfdx force:org:delete -u ciorg -p