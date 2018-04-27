command: 'date "+%A"'

refreshFrequency: 10000

render: (output) -> """
  <div>#{output}</div>
"""

style: """
  color: #56b6c2
  font-family: Helvetica Neue
  font-size: 12px
  font-weight: 400
  height: 24px
  line-height: 24px
  margin: 0
  padding: 0 10px
  right: 214px
  top: 0
"""
