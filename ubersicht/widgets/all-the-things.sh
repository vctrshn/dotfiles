#!/bin/bash
startJSON() {
  echo '{'
}

exportService() {
  echo '  "workspaceData":"'${workspaceData}'",'
  echo '  "timeData":"'${timeData}'",'
  echo '  "dayData":"'${dayData}'",'
  echo '  "dateData":"'${dateData}'",'
  echo '  "networkData":"'${networkData}'",'
  echo '  "batteryData":"'${batteryData}'"'
}

endJSON() {
  echo '}'
}

startJSON

workspaceData=$(/Users/vshen/homebrew/bin/chunkc tiling::query --desktop id)
timeData=$(date "+%R")
dayData=$(date "+%A")
dateData=$(date "+%m/%d/%y")
networkData=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep ' SSID' | cut -c 18-38)
batteryData=$(pmset -g batt | grep "%" | awk 'BEGINN { FS = ";" };{ print $3,$4 }' | sed -e 's/-I/I/' -e 's/-0//' -e 's/;//' -e 's/;//')

exportService

endJSON
