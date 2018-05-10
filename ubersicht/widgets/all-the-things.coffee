command: "./all-the-things.sh"

refreshFrequency: 5000

render: (output) ->
  data = JSON.parse output

  batteryValues = data.batteryData.split(' ')
  percentage = batteryValues[0]
  chargeStatus = batteryValues[1].trim()
  chargeIcon = if chargeStatus == 'charging' then '⚡️' else '🔋'

  return """
    <div id='main'>
      <div id='workspace'>❯❯ #{data.workspaceData}</div>
      <div id='time'>#{data.timeData}</div>
      <div id='right-side'>
        <div id='day'>#{data.dayData}</div>
        <div id='date'>#{data.dateData}</div>
        <div id='network'>#{data.networkData}</div>
        <div id='battery'>#{percentage}<span id='charge-icon'>#{chargeIcon}</span></div>
      </div>
    </div>
  """

style: """
  width: 100%

  #main
    display: flex
    justify-content: space-between
    font-family: Helvetica Neue
    font-size: 12px
    font-weight: 400
    height: 22px
    line-height: 22px
    margin: 0
    left: 0
    right: 0
    width: 100%

  #workspace
    color: #e06c75
    margin-left: 10px
    width: 33%

  #time
    color: #d19a66
    text-align: center
    width: 33%

  #right-side
    display: flex
    justify-content: flex-end
    margin-right: 10px
    width: 33%

  #day
    color: #56b6c2

  #date
    color: #61afef
    margin-left: 10px

  #network
    color: #c678dd
    margin-left: 10px

  #battery
    color: #98c379
    margin-left: 10px

  #charge-icon
    font-size: 10px
"""
