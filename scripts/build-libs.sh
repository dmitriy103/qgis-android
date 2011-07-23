#!/bin/bash

#   ***************************************************************************
#     build-libs.sh - builds all needed libraries for android QGIS
#      --------------------------------------
#      Date                 : 01-Jun-2011
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

########START SCRIPT########
usage(){
 echo "Usage:"
 echo " build-libs.sh 
        --help (-h)
        --version (-v)
        --echo <text> (-e)      this option does noting"
}

echo "BUILDING ANDROID QGIS LIBS2"
echo "SRC location: " $SRC_DIR
echo "NDK location: " $NDK
echo "Standalone toolchain location: " $ANDROID_NDK_TOOLCHAIN_ROOT
echo "PATH:" $PATH
echo "You can configure all this and more in `dirname $0`/config.conf"

export REMOVE_DOWNLOADS=0

while test "$1" != "" ; do
        case $1 in
                --echo|-e)
                        echo "$2"
                        shift
                ;;
                --help|-h)
                        usage
                        exit 0
                ;;
                --version|-v)
                        echo "build.sh version 0.0.1"
                        exit 0
                ;;
                -*)
                        echo "Error: no such option $1"
                        usage
                        exit 1
                ;;
        esac
        shift
done
echo $QGIS_ANDROID_BUILD_ALL
#confirm settings if not running build_all.sh
if [ ! -n "${QGIS_ANDROID_BUILD_ALL+x}" ]; then
  CONTINUE="n"
  echo "OK? [y, n*]:"
  read CONTINUE
else
  CONTINUE="y"
fi
  
CONTINUE=$(echo $CONTINUE | tr "[:upper:]" "[:lower:]")
if [ "$CONTINUE" != "y" ]; then
  echo "Abort"
  exit 1
else
  cd $SRC_DIR



  #########EXPAT2.0.1########
  echo "EXPAT2.0.1"
  cd expat-2.0.1/
  #configure
  CFLAGS='-mthumb -march=armv7-a -mfloat-abi=softfp' \
  LDFLAGS='-Wl,--fix-cortex-a8' \
  ./configure --prefix=$INSTALL_DIR --host=arm-linux-androideabi
  #compile
  make -j$CORES 2>&1 | tee make.out
  make -j$CORES 2>&1 install | tee makeInstall.out
  cd $SRC_DIR
  #########END EXPAT2.0.1########


  #########SQLITE3.7.4########
  echo "SQLITE"
  cd sqlite-autoconf-3070400/
  #configure
  CFLAGS='-mthumb -march=armv7-a -mfloat-abi=softfp' \
  LDFLAGS='-Wl,--fix-cortex-a8' \
  ./configure --prefix=$INSTALL_DIR --host=arm-linux-androideabi
  #compile
  make -j$CORES 2>&1 | tee make.out
  make -j$CORES 2>&1 install | tee makeInstall.out
  cd $SRC_DIR
  #########END SQLITE3.7.4########


  ##########PROJ4########
  echo "PROJ4"
  cd proj-4.7.0/

  #configure
  CFLAGS='-mthumb -march=armv7-a -mfloat-abi=softfp' \
  LDFLAGS='-Wl,--fix-cortex-a8' \
  ./configure --prefix=$INSTALL_DIR --host=arm-linux-androideabi

  #compile
  make -j$CORES 2>&1 | tee make.out
  make -j$CORES 2>&1 install | tee makeInstall.out
  cd $SRC_DIR
  #########END PROJ4########


  #########LIBICONV1.13.1########
#  echo "LIBICONV"
#  cd libiconv-1.13.1/
#  #configure
#  CFLAGS='-mthumb -march=armv7-a -mfloat-abi=softfp' \
#  LDFLAGS='-Wl,--fix-cortex-a8' \
#  ./configure --host=arm-linux-androideabi --prefix=$INSTALL_DIR
#  #compile
#  make -j$CORES 2>&1 | tee make.out
#  make -j$CORES 2>&1 install | tee makeInstall.out
#  cd $SRC_DIR
  #########END LIBICONV1.13.1########
  

  #########GEOS3.2.2########
  echo "GEOS3.2.2"
  cd geos-3.2.2/
  #configure
  CFLAGS="-mthumb -march=armv7-a -mfloat-abi=softfp" LIBS="-lsupc++ -lstdc++" \
  LDFLAGS='-Wl,--fix-cortex-a8' \
  ./configure --host=arm-linux-androideabi --prefix=$INSTALL_DIR
  #compile
  make -j$CORES 2>&1 | tee make.out
  make -j$CORES 2>&1 install | tee makeInstall.out
  cd $SRC_DIR
  #########END GEOS3.2.2########


  #########GDAL1.8.0########
  echo "GDAL"
  cd gdal-1.8.0/
  #configure
  CFLAGS="-mthumb -march=armv7-a -mfloat-abi=softfp" LIBS="-lsupc++ -lstdc++" \
  LDFLAGS='-Wl,--fix-cortex-a8' \
  ./configure --host=arm-linux-androideabi --without-grib --prefix=$INSTALL_DIR
  #compile
  make -j$CORES 2>&1 | tee make.out
  make -j$CORES 2>&1 install | tee makeInstall.out
  cd $SRC_DIR
  #########END GDAL1.8.0########
  
  echo "please compile QWT using necessitas QtCreator"
  echo "run $NECESSITAS_DIR/QtCreator/bin/necessitas ./qwt-5.2.0/qwt.pro now?"
  echo "[y*, n]:"
  read CONTINUE
  CONTINUE=$(echo $CONTINUE | tr "[:upper:]" "[:lower:]")

  if [ "$CONTINUE" = "n" ]; then
    echo "remember to manually run $NECESSITAS_DIR/QtCreator/bin/necessitas ./qwt-5.2.0/qwt.pro"
  else
    $NECESSITAS_DIR/QtCreator/bin/necessitas ./qwt-5.2.0/qwt.pro
  fi
  exit 0
fi
