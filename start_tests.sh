#!/bin/bash

#
# Start the framework in clean mode using the default setup.
#

LAUNCHER=ogema-launcher.jar
CONFIG=config/config-tests.xml
PROPERTIES=config/ogema.properties
OPTIONS="-clean"

rm -rf database
java -jar $LAUNCHER -config $CONFIG -p $PROPERTIES $OPTIONS
