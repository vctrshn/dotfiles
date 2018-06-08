#!/bin/bash
currentMonitor=$(/Users/vshen/homebrew/bin/chunkc tiling::query --monitor id)
currentWorkspace=$(/Users/vshen/homebrew/bin/chunkc tiling::query --desktop id)
allWorkspaces=$(/Users/vshen/homebrew/bin/chunkc tiling::query --desktops-for-monitor $currentMonitor)

echo "$currentWorkspace@$allWorkspaces"

