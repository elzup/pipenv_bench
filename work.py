from time import sleep

import requests
import serial

from psutil import cpu_times

print("start")

while True:
    s = serial.Serial()

    try:
        requests.get("http://localhost:8000")
    except Exception:
        pass
    cpu_times()
    s.close()

    sleep(0.01)
