QT       += core gui network multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
RC_FILE += resource.rc

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += interactive_buttons/ \
    facile_menu/ \
    color_octree/ \
	order_player/

SOURCES += \
    color_octree/coloroctree.cpp \
    color_octree/imageutil.cpp \
    order_player/desktoplyricwidget.cpp \
    facile_menu/facilemenu.cpp \
    facile_menu/facilemenuitem.cpp \
    interactive_buttons/interactivebuttonbase.cpp \
    order_player/logindialog.cpp \
    main.cpp \
    order_player/numberanimation.cpp \
    order_player/orderplayerwindow.cpp

HEADERS += \
    order_player/clickslider.h \
    color_octree/coloroctree.h \
    color_octree/imageutil.h \
    order_player/desktoplyricwidget.h \
    facile_menu/facilemenu.h \
    facile_menu/facilemenuitem.h \
    interactive_buttons/interactivebuttonbase.h \
    order_player/itemselectionlistview.h \
    order_player/logindialog.h \
    order_player/lyricstreamwidget.h \
    order_player/numberanimation.h \
    order_player/orderplayerwindow.h \
    order_player/roundedpixmaplabel.h \
    order_player/songbeans.h

FORMS += \
    order_player/logindialog.ui \
    order_player/orderplayerwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc

DISTFILES += \
    README.md