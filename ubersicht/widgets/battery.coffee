command: "pmset -g batt | grep \"%\" | awk 'BEGINN { FS = \";\" };{ print $3,$4 }' | sed -e 's/-I/I/' -e 's/-0//' -e 's/;//' -e 's/;//'"

refreshFrequency: 1000

render: (output) ->
  values = output.split(' ')
  percentage = values[0]
  chargeStatus = values[1].trim()
  chargeIcon = if chargeStatus == 'charging' then '⚡️' else '🔋'

  return """
    <div>#{percentage}<span id='chargeIcon'>#{chargeIcon}</span></div>
  """

style: """
  border-left: 2px solid #5c6370
  color: #98c379
  font-family: Helvetica Neue
  font-size: 12px
  font-weight: 400
  height: 24px
  line-height: 24px
  margin: 0
  padding: 0 0 0 10px
  right: 10px
  top: 0
  width: 44px

  #chargeIcon
    font-size: 10px
"""
