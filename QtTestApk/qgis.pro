#   ***************************************************************************
#     qgis.pro - android QGIS
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
#   ***************************************************************************

#-----------------------------------------------------------
#
# Project created by NecessitasQtCreator 2011-08-07T15:46:41
#
#-----------------------------------------------------------

QT       += core gui

TARGET = qgis
TEMPLATE = app

DESTDIR = android/libs/$$(ANDROID_TARGET_ARCH)

INCLUDEPATH += $$(INSTALL_DIR)/include
LIBS+=-L$$(INSTALL_DIR)/lib -lproj


SOURCES += main.cpp\
        window.cpp

HEADERS  += window.h

FORMS    += window.ui

CONFIG += mobility
MOBILITY = 


OTHER_FILES += \
    android/AndroidManifest.xml \
    android/res/values/strings.xml \
    android/res/values/libs.xml \
    android/res/drawable-mdpi/icon.png \
    android/res/drawable-hdpi/icon.png \
    android/res/drawable-ldpi/icon.png \
    android/src/eu/licentia/necessitas/ministro/IMinistro.aidl \
    android/src/eu/licentia/necessitas/ministro/IMinistroCallback.aidl \
    android/src/eu/licentia/necessitas/industrius/QtActivity.java \
    android/src/eu/licentia/necessitas/industrius/QtApplication.java \
    android/src/eu/licentia/necessitas/industrius/QtLayout.java \
    android/src/eu/licentia/necessitas/industrius/QtSurface.java \
    android/src/eu/licentia/necessitas/mobile/QtSensors.java \
    android/src/eu/licentia/necessitas/mobile/QtAndroidContacts.java \
    android/src/eu/licentia/necessitas/mobile/QtLocation.java \
    android/src/eu/licentia/necessitas/mobile/QtMediaPlayer.java \
    android/src/eu/licentia/necessitas/mobile/QtSystemInfo.java \
    android/src/eu/licentia/necessitas/mobile/QtCamera.java \
    android/src/eu/licentia/necessitas/mobile/QtFeedback.java
