#!/usr/bin/env python3
import subprocess
import i3ipc

BAR_ID = "mybar"
TARGET_WS_NUM = 2

def set_bar(mode):
    # mode is "invisible" or "dock"
    subprocess.run(["i3-msg", f"bar mode {mode} {BAR_ID}"],
                   stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=False)

def handle(i3, e):
    # e.current may be None on some events; fall back to focused tree
    ws_num = (getattr(e, "current", None) and e.current.num) or i3.get_tree().find_focused().workspace().num
    if ws_num == TARGET_WS_NUM:
        set_bar("invisible")
    else:
        set_bar("dock")

def main():
    i3 = i3ipc.Connection()
    # run once at startup so it’s correct even before first event
    handle(i3, None)
    i3.on("workspace::focus", handle)
    i3.main()

if __name__ == "__main__":
    main()
