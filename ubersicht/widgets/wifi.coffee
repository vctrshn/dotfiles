command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep ' SSID' | cut -c 18-38"

refreshFrequency: 20000

render: (output) -> """
  <div>#{output.trim()}</div>
"""

style: """
  border-left: 2px solid #5c6370
  color: #c678dd
  font-family: Helvetica Neue
  font-size: 12px
  font-weight: 400
  height: 24px
  line-height: 24px
  margin: 0
  width: 60px
  overflow: hidden
  padding: 0 10px
  right: 64px
  text-align: center
  text-overflow: ellipsis
  top: 0
  white-space: nowrap
"""
