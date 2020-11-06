#!/bin/bash

cd $(dirname "$0")/wxWidgets

git apply ../wx_unistd.patchx

CPPFLAGS="$CPPFLAGS -D__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES=1" \
    ./configure --disable-aboutdlg --disable-animatectrl --disable-aui --disable-any \
    --disable-bannerwindow --disable-base64 --disable-calendar --disable-caret \
    --disable-cmdline --disable-colourpicker --disable-compat28 --disable-config \
    --disable-constraints --disable-datepick --disable-dctransform --disable-debugreport \
    --disable-dialupman --disable-docview --disable-filehistory --disable-finddlg \
    --disable-fs_archive --disable-fs_inet --disable-fs_zip --disable-fsvolume \
    --disable-fswatcher --disable-gif --disable-help --disable-html --disable-ipc \
    --disable-joystick --disable-jpeg --disable-largefile --disable-markup --disable-mdi \
    --disable-mediactrl --disable-metafiles --disable-miniframe --disable-notifmsg \
    --disable-numberdlg --disable-pcx --disable-pnm --disable-postscript \
    --disable-prefseditor --disable-printarch --disable-progressdlg --disable-propgrid \
    --disable-protocol --disable-protocols --disable-rearrangectrl --disable-ribbon \
    --disable-richtext --disable-richtooltip --disable-snglinst --disable-sockets \
    --disable-sockets --disable-sound --disable-splash --disable-splines \
    --disable-std_iostreams --disable-svg --disable-tarstream --disable-tiff \
    --disable-tipdlg --disable-tipwindow --disable-url --disable-webkit --disable-webview \
    --disable-wizarddlg --disable-xrc \
    --enable-geometry --enable-imaglist --enable-listctrl --enable-stc --with-cocoa \
    --with-libpng=yes --with-macosx-version-min=10.9 \
    --with-opengl \
    --without-libjpeg --without-libtiff --without-regex

make -j4
