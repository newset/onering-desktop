######################################################################
# Automatically generated by qmake (2.01a) Thu Aug 19 21:40:02 2010
######################################################################

TEMPLATE = lib
TARGET = OneRing
DEPENDPATH += . include src
INCLUDEPATH += . include
QT += webkit network
RESOURCES = onering.qrc
CONFIG += shared
DEFINES += ONERING_LIBRARY
VERSION = 1
macx {
	CONFIG += lib_bundle
	FRAMEWORK_HEADERS.version = Versions
	FRAMEWORK_HEADERS.files = include/onering.h
	FRAMEWORK_HEADERS.path = Headers
	QMAKE_BUNDLE_DATA += FRAMEWORK_HEADERS
	QMAKE_FRAMEWORK_BUNDLE_NAME = OneRing
	QMAKE_FRAMEWORK_VERSION = $$VERSION
}

!release {
	DEFINES += DEBUG
}

# Input
HEADERS += include/onering.h \
	   src/oneringview.h \
	   src/networkaccessmanager.h \
           src/app.h \
	   src/appreply.h \
	   src/jsapi.h \
	   src/oneringapp.h \
	   src/systemtrayicon.h \
	   src/menu.h \
	   src/menuitem.h \
	   src/dataloader.h \
	   src/application.h \
	   src/debugger.h \
	   src/event.h \
	   src/pubsubhub.h \
	   src/publishevent.h \
	   src/json.h
SOURCES += src/onering.cpp \
	   src/oneringview.cpp \
	   src/networkaccessmanager.cpp \
	   src/app.cpp \
	   src/appreply.cpp \
	   src/jsapi.cpp \
	   src/oneringapp.cpp \
	   src/systemtrayicon.cpp \
	   src/menu.cpp \
           src/menuitem.cpp \
	   src/dataloader.cpp \
           src/application.cpp \
	   src/debugger.cpp \
  	   src/event.cpp \
	   src/pubsubhub.cpp \
	   src/publishevent.cpp \
	   src/json.cpp

# global shourtcut
HEADERS += src/hotkey.h \
	   src/qxtglobalshortcut.h \
	   src/qxtglobal.h \
	   src/qxtglobalshortcut_p.h
SOURCES += src/hotkey.cpp \
	   src/qxtglobalshortcut.cpp
macx:SOURCES += src/qxtglobalshortcut_mac.cpp
win32:SOURCES += src/qxtglobalshortcut_win.cpp
unix:!macx:SOURCES += src/qxtglobalshortcut_x11.cpp
macx:LIBS += -framework Carbon
win32 {
	win32-g++:LIBS += -l user32
	!win32-g++:LIBS += user32.lib
}

