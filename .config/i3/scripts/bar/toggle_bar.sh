#!/usr/bin/env python3
import i3ipc

i3 = i3ipc.Connection()

def on_workspace_focus(i3, e):
    if e.current and e.current.name == "3:dev":
        i3.command('bar hidden_state hide mainbar')
    else:
        i3.command('bar hidden_state show mainbar')

i3.on("workspace::focus", on_workspace_focus)
i3.main()
