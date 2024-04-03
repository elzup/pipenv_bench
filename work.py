from random import randint
from time import sleep

import requests
import serial

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
