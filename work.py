from random import randint
from time import sleep

import requests
import vlc

# import certifi
# import charset_normalizer
# import distlib
# import filelock
# import frozendict
# import idna
# import mccabe
# import platformdirs
import python_dateutil
import typing_extensions
import urllib3
import serial
import pry
from requests_cache import CachedSession
from psutil import cpu_times


while True:
    c = CachedSession()
    s = serial.Serial()

    requests.get("http://localhost:5000/", timeout=randint(1, 30) * 0.01)
    cpu_times()
    c.close()
    s.close()

    sleep(0.01)
