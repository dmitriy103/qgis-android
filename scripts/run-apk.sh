#!/bin/bash

#   ***************************************************************************
#     build-apk.sh - builds the and installs the needed libraries for android QGIS
#      --------------------------------------
#      Date                 : 01-Aug-2011
#      Copyright            : (C) 2011 by Marco Bernasocchi
#      Email                : marco at bernawebdesign.ch
#   ***************************************************************************
#   *                                                                         *
#   *   This program is free software; you can redistribute it and/or modify  *
#   *   it under the terms of the GNU General Public License as published by  *
#   *   the Free Software Foundation; either version 2 of the License, or     *
#   *   (at your option) any later version.                                   *
#   *                                                                         *
#   ***************************************************************************/

set -e

source `dirname $0`/config.conf
ADB=$ANDROID_SDK_ROOT/platform-tools/adb
$ADB kill-server
sudo $ADB devices


if [ "$1" = "--clear" ]; then
    echo "clearing org.qgis.qgis"
    $ADB clear org.qgis.qgis
fi

gnome-system-log /tmp/logcat.log &
$ADB shell am start -n org.qgis.qgis/eu.licentia.necessitas.industrius.QtActivity

$ADB logcat | tee /tmp/logcat.log


