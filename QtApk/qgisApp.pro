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
LIBS+=-L$$(INSTALL_DIR)/lib -lqwt -lexpat -lgsl -lsqlite3 -lproj -lgeos_c -lgdal


SOURCES += main.cpp \
  qgisapp.cpp \
  qgisappinterface.cpp \
  qgsabout.cpp \
  qgssponsors.cpp \
  qgsaddattrdialog.cpp \
  qgsaddjoindialog.cpp \
  qgsannotationwidget.cpp \
  qgsattributeactiondialog.cpp \
  qgsattributedialog.cpp \
  qgsattributetypedialog.cpp \
  qgsattributetypeloaddialog.cpp \
  qgsbookmarkitem.cpp \
  qgsbookmarks.cpp \
  qgsbrowserdockwidget.cpp \
  qgsclipboard.cpp \
  qgscontinuouscolordialog.cpp \
  qgsconfigureshortcutsdialog.cpp \
  qgscustomization.cpp \
  qgscustomprojectiondialog.cpp \
  qgsdbfilterproxymodel.cpp \
  qgsdbtablemodel.cpp \
  qgsembedlayerdialog.cpp \
  qgsformannotationdialog.cpp \
  qgsdelattrdialog.cpp \
  qgsdisplayangle.cpp \
  qgsfieldcalculator.cpp \
  qgsgraduatedsymboldialog.cpp \
  qgsidentifyresults.cpp \
  qgsfeatureaction.cpp \
  qgslabeldialog.cpp \
  qgslabelpropertydialog.cpp \
  qgslabelengineconfigdialog.cpp \
  qgslabelinggui.cpp \
  qgslabelpreview.cpp \
  qgsmaptooladdfeature.cpp \
  qgsmaptooladdvertex.cpp \
  qgsmaptooladdpart.cpp \
  qgsmaptooladdring.cpp \
  qgsmaptoolannotation.cpp \
  qgsmaptoolcapture.cpp \
  qgsmaptoolchangelabelproperties.cpp \
  qgsmaptooldeletering.cpp \
  qgsmaptooldeletepart.cpp \
  qgsmaptooldeletevertex.cpp \
  qgsmaptooledit.cpp \
  qgsmaptoolformannotation.cpp \
  qgsmaptoolidentify.cpp \
  qgsmaptoollabel.cpp \
  qgsmaptoolmeasureangle.cpp \
  qgsmaptoolmovefeature.cpp \
  qgsmaptoolmovelabel.cpp \
  qgsmaptoolmovevertex.cpp \
  qgsmaptoolnodetool.cpp \
  qgsmaptoolreshape.cpp \
  qgsmaptoolrotatelabel.cpp \
  qgsmaptoolrotatepointsymbols.cpp \
  qgsmaptoolselect.cpp \
  qgsmaptoolselectrectangle.cpp \
  qgsmaptoolselectfreehand.cpp \
  qgsmaptoolselectpolygon.cpp \
  qgsmaptoolselectradius.cpp \
  qgsmaptoolselectutils.cpp \
  qgsmaptoolsimplify.cpp \
  qgsmaptoolsplitfeatures.cpp \
  qgsmaptooltextannotation.cpp \
  qgsmaptoolvertexedit.cpp \
  qgsmeasuredialog.cpp \
  qgsmeasuretool.cpp \
  qgsmergeattributesdialog.cpp \
  qgsoptions.cpp \
  qgspastetransformations.cpp \
  qgspointrotationitem.cpp \
  qgspluginitem.cpp \
  qgspluginmanager.cpp \
  qgspluginmetadata.cpp \
  qgspluginregistry.cpp \
  qgsprojectproperties.cpp \
  qgsrastercalcdialog.cpp \
  qgsrasterlayerproperties.cpp \
  qgstextannotationdialog.cpp \
  qgsshortcutsmanager.cpp \
  qgssinglesymboldialog.cpp \
  qgssnappingdialog.cpp \
  qgsundowidget.cpp \
  qgstilescalewidget.cpp \
  qgstipgui.cpp \
  qgstipfactory.cpp \
  qgsuniquevaluedialog.cpp \
  qgsvectorlayerproperties.cpp \
  qgsquerybuilder.cpp \
  qgshighlight.cpp \
  qgshandlebadlayers.cpp \
\
  composer/qgsattributeselectiondialog.cpp \
  composer/qgscomposer.cpp \
  composer/qgscomposerarrowwidget.cpp \
  composer/qgscomposeritemwidget.cpp \
  composer/qgscomposerlabelwidget.cpp \
  composer/qgscomposerpicturewidget.cpp \
  composer/qgscomposermanager.cpp \
  composer/qgscomposermapwidget.cpp \
  composer/qgscomposerscalebarwidget.cpp \
  composer/qgscomposershapewidget.cpp \
  composer/qgscomposertablewidget.cpp \
  composer/qgscomposerlegenditemdialog.cpp \
  composer/qgscomposerlegendlayersdialog.cpp \
  composer/qgscomposerlegendwidget.cpp \
  composer/qgscompositionwidget.cpp \
  composer/qgsitempositiondialog.cpp\
\
  legend/qgslegendgroup.cpp \
  legend/qgslegend.cpp \
  legend/qgsapplegendinterface.cpp \
  legend/qgslegenditem.cpp \
  legend/qgslegendlayer.cpp \
  legend/qgslegendpropertygroup.cpp \
  legend/qgslegendpropertyitem.cpp \
  legend/qgslegendsymbologygroup.cpp \
  legend/qgslegendsymbologyitem.cpp \
  legend/qgslegendvectorsymbologyitem.cpp \
\
  ogr/qgsogrhelperfunctions.cpp \
  ogr/qgsopenvectorlayerdialog.cpp \
  ogr/qgsnewogrconnection.cpp \
  ogr/qgsogrsublayersdialog.cpp \
  ogr/qgsvectorlayersaveasdialog.cpp \
\
  attributetable/qgsattributetabledialog.cpp \
\
  gps/qgsgpsinformationwidget.cpp \
  gps/qgsgpsmarker.cpp \
\
  gps/qwtpolar/qwt_polar_canvas.cpp \
  gps/qwtpolar/qwt_polar_curve.cpp \
  gps/qwtpolar/qwt_polar_fitter.cpp \
  gps/qwtpolar/qwt_polar_grid.cpp \ 
  gps/qwtpolar/qwt_polar_itemdict.cpp \
  gps/qwtpolar/qwt_polar_item.cpp \
  gps/qwtpolar/qwt_polar_layout.cpp \
  gps/qwtpolar/qwt_polar_magnifier.cpp \
  gps/qwtpolar/qwt_polar_marker.cpp \ 
  gps/qwtpolar/qwt_polar_panner.cpp \
  gps/qwtpolar/qwt_polar_plot.cpp \ 
  gps/qwtpolar/qwt_polar_point.cpp \
  gps/qwtpolar/qwt_polar_spectrogram.cpp

HEADERS  +=   qgisapp.h \
  qgisappinterface.h \
  qgsabout.h \
  qgsaddattrdialog.h \
  qgsaddjoindialog.h \
  qgsannotationwidget.h \
  qgsattributeactiondialog.h \
  qgsattributedialog.h \
  qgsattributetypedialog.h \
  qgsattributetypeloaddialog.h \
  qgsbookmarks.h \
  qgsbrowserdockwidget.h \
  qgsconfigureshortcutsdialog.h \
  qgscontinuouscolordialog.h \
  qgscustomization.h \
  qgscustomprojectiondialog.h \
  qgsdbtablemodel.h \
  qgsdelattrdialog.h \
  qgsdisplayangle.h \
  qgsembedlayerdialog.h \
  qgsfeatureaction.h \
  qgsfieldcalculator.h \
  qgsformannotationdialog.h \
  qgsgraduatedsymboldialog.h \
  qgsidentifyresults.h \
  qgslabeldialog.h \
  qgslabelengineconfigdialog.h \
  qgslabelinggui.h \
  qgslabelpropertydialog.h \
  qgsmaptooladdfeature.h \
  qgsmaptoolcapture.h \
  qgsmaptooladdpart.h \
  qgsmaptooladdring.h \
  qgsmaptooladdvertex.h \
  qgsmaptoolchangelabelproperties.h \
  qgsmaptooldeletepart.h \
  qgsmaptooldeletering.h \
  qgsmaptooldeletevertex.h \
  qgsmaptoolidentify.h \
  qgsmaptoolmeasureangle.h \
  qgsmaptoolmovefeature.h \
  qgsmaptoolmovelabel.h \
  qgsmaptoolmovevertex.h \
  qgsmaptoolnodetool.h \
  qgsmaptoolreshape.h \
  qgsmaptoolrotatelabel.h \
  qgsmaptoolrotatepointsymbols.h \
  qgsmaptoolselectfreehand.h \
  qgsmaptoolselect.h \
  qgsmaptoolselectpolygon.h \
  qgsmaptoolselectradius.h \
  qgsmaptoolselectrectangle.h \
  qgsmaptoolsimplify.h \
  qgsmaptoolsplitfeatures.h \
  qgsmaptoolvertexedit.h \
  qgsmeasuredialog.h \
  qgsmeasuretool.h \
  qgsmergeattributesdialog.h \
  qgsoptions.h \
  qgspastetransformations.h \
  qgspluginmanager.h \
  qgsprojectproperties.h \
  qgsquerybuilder.h \
  qgsrastercalcdialog.h \
  qgsrasterlayerproperties.h \
  qgssinglesymboldialog.h \
  qgssnappingdialog.h \
  qgssponsors.h \
  qgstextannotationdialog.h \
  qgstilescalewidget.h \
  qgstipgui.h \
  qgstipfactory.h \
  qgsundowidget.h \
  qgsuniquevaluedialog.h \
  qgsvectorlayerproperties.h \
  qgshandlebadlayers.h \
\
  composer/qgsattributeselectiondialog.h \
  composer/qgscomposer.h \
  composer/qgscomposerarrowwidget.h \
  composer/qgscomposeritemwidget.h \
  composer/qgscomposerlabelwidget.h \
  composer/qgscomposerlegendwidget.h \
  composer/qgscomposermanager.h \
  composer/qgscomposermapwidget.h \
  composer/qgscomposerpicturewidget.h \
  composer/qgscomposerscalebarwidget.h \
  composer/qgscomposertablewidget.h \
  composer/qgscomposershapewidget.h \
  composer/qgscompositionwidget.h \
  composer/qgsitempositiondialog.h \
\
  legend/qgslegend.h \
  legend/qgsapplegendinterface.h \
  legend/qgslegendlayer.h \
\
  ogr/qgsopenvectorlayerdialog.h \
  ogr/qgsnewogrconnection.h \
  ogr/qgsogrsublayersdialog.h \
  ogr/qgsvectorlayersaveasdialog.h \
\
  attributetable/qgsattributetabledialog.h \
\
  gps/qgsgpsinformationwidget.h \
\
  gps/qwtpolar/qwt_polar_canvas.h \
  gps/qwtpolar/qwt_polar_magnifier.h \
  gps/qwtpolar/qwt_polar_panner.h \
  gps/qwtpolar/qwt_polar_plot.h 


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
