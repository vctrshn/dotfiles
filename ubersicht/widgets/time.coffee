command: 'date "+%R"'

# the refresh frequency in milliseconds
refreshFrequency: 10000

# render gets called after the shell command has executed. The command's output
# is passed in as a string. Whatever it returns will get rendered as HTML.
render: (output) -> """
  <div>#{output}</div>
"""

# the CSS style for this widget, written using Stylus
# (http://learnboost.github.io/stylus/)
style: """
  color: #d19a66
  font-family: Helvetica Neue
  font-size: 12px
  font-weight: 400
  height: 24px
  line-height: 24px
  margin: 0
  padding: 0 10px
  text-align: center
  top: 0
  width: 100%
"""
