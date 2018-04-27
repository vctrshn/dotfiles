command: 'date "+%m/%d/%y"'

refreshFrequency: 10000

render: (output) -> """
  <div>#{output}</div>
"""

style: """
  border-left: 2px solid #5c6370
  color: #61afef
  font-family: Helvetica Neue
  font-size: 12px
  font-weight: 400
  height: 24px
  line-height: 24px
  margin: 0
  padding: 0 10px
  right: 144px
  top: 0
  width: 50px
"""
