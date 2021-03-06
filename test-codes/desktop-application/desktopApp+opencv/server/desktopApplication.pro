QT       += core gui datavisualization network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

CONFIG += c++11 opencv

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    colortracker.cpp \
    gwindow.cpp \
    main.cpp \
    mainwindow.cpp \
    qcustomplot.cpp \
    videocapture.cpp

HEADERS += \
    colortracker.h \
    gwindow.h \
    mainwindow.h \
    qcustomplot.h \
    videocapture.h \
    videocapture.h

FORMS += \
    gwindow.ui \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    PngItem_3022890.png \
    green.png \
    height.png \
    position.png \
    radius.png


INCLUDEPATH += /usr/include/opencv
LIBS += -L/usr/lib -lopencv_core -lopencv_imgcodecs -lopencv_highgui -lopencv_videoio -lopencv_core -lopencv_imgproc

