#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import time


if __name__ == "__main__":
    try:
        while True:
            time.sleep(5)
            print("ss")
            print("test")
    except Exception, e:
        print str(e)
        # traceback.print_exc(e)
