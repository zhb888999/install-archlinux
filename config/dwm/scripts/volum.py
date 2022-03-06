#!/bin/python
import re
import subprocess


def get_status():
    try:
        pro = subprocess.run(["amixer", "sget", "Master"], stdout=subprocess.PIPE)
    except Exception:
        return "ﱝ","!"
    pattern = re.compile(r"\[(\d*)%\].*\[(\w*)\]")
    result = pattern.findall(pro.stdout.decode())
    if len(result) == 0:
        return "ﱝ","!"
    vol, on = int(result[0][0]), result[0][1] == "on"
    if not on:
        return "婢",f"{vol}%"
    if vol == 0:
        return "奄", f"{vol}%"
    if vol <= 50:
        return "奔", f"{vol}%"
    return "墳", f"{vol}%"

ico, vol = get_status()
print(f"{ico} {vol}", end="")

    