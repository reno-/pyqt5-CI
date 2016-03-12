#! /usr/bin/env python3
# -*- coding: utf-8 -*-

"""
main script
"""

import sys
from PyQt5.QtCore import QObject, QTimer, QCoreApplication

class Hello(QObject):

    def __init__(self, msg):
        super(Hello, self).__init__()
        self.msg = msg
        self.timer = QTimer(self)
        self.timer.timeout.connect(self.say)
        self.timer.start(500)
        self.i = 0

    def say(self):
        print(self.msg, self.i)
        self.i += 1
        if self.i > 5:
            QCoreApplication.instance().quit()

if __name__ == "__main__":
    import sys
    app = QCoreApplication(sys.argv)
    hello = Hello("Hello Travis World!")
    sys.exit(app.exec_())