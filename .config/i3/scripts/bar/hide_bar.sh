#!/usr/bin/env python3
import i3ipc

i3 = i3ipc.Connection()

# Workspace where you want the bar hidden
HIDE_WORKSPACE = "10"

def on_workspace_focus(i3, e):
    if e.current and e.current.name == HIDE_WORKSPACE:
        # Hide bar when entering workspace 10
        i3.command('bar mode hide')
    else:
        # Restore bar when leaving workspace 10
        i3.command('bar mode dock')

# Listen for workspace focus changes
i3.on("workspace::focus", on_workspace_focus)

# Start the event loop
i3.main()
