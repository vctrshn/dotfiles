command: "/Users/vshen/homebrew/bin/chunkc tiling::query --desktop id"

refreshFrequency: 500

render: (output) -> """
  <div>❯❯ #{output}</div>
"""

style: """
  color: #e06c75
  font-family: Helvetica Neue
  font-size: 12px
  font-weight: 400
  height: 24px
  left: 10px
  line-height: 24px
  margin: 0
  padding: 0
  top: 0
"""
