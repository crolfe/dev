#!/usr/bin/python3
import sys

import i3ipc


# Builds the workspace line.
def build_workspace_line(workspaces):
    workspaceLine = ""

    for ws in workspaces:
        if ws.focused:
            workspaceLine += " [" + str(ws.num) + "] "
        else:
            workspaceLine += " " + str(ws.num) + " "

    return workspaceLine


def print_line(data):
    sys.stdout.write(data + "\n")
    sys.stdout.flush()


def on_workspace_focus(connection, e):
    if e.change not in ["init", "focus", "empty", "rename", "urgent"]:
        return

    workspaces = connection.get_workspaces()
    line = build_workspace_line(workspaces)
    print_line(line)


if __name__ == "__main__":
    i3 = i3ipc.Connection()

    workspaces = i3.get_workspaces()
    line = build_workspace_line(workspaces)
    print_line(line)

    i3.on("workspace", on_workspace_focus)
    i3.main()
