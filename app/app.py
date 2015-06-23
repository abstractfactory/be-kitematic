import sys

# Dependencies
from PyQt5 import QtCore, QtGui, QtQuick, QtQml


def main():
    app = QtGui.QGuiApplication(sys.argv)
    url = QtCore.QUrl("qml/main.qml")
    engine = QtQml.QQmlApplicationEngine(url)
    return app.exec_()

if __name__ == "__main__":
    sys.exit(main())
