#!/bin/bash

echo "------------- START UPDATING CONFIGURATION ---------------"
$JBOSS_HOME/bin/jboss-cli.sh --file=/opt/eap/extensions/actions.cli
echo "------------- ENDED UPDATING CONFIGURATION ---------------"
