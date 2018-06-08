command: "./all-the-things.sh"

refreshFrequency: 5000

render: (output) ->
  return """
    <div id='main'>
      <div id='time'></div>
      <div id='right-side'>
        <div id='day'></div>
        <div id='date'></div>
        <div id='network'></div>
        <div id='battery'></div>
      </div>
    </div>
  """

update: (output, domEl) ->
  [timeData, dayData, dateData, networkData, batteryData] = output.split '@'

  batteryValues = batteryData.split(' ')
  percentage = batteryValues[0]
  chargeStatus = batteryValues[1].trim()
  chargeIcon = if chargeStatus == 'charging' then '⚡️' else '🔋'

  $(domEl).find('#time').text(timeData)
  $(domEl).find('#day').text(dayData)
  $(domEl).find('#date').text(dateData)
  $(domEl).find('#network').text(networkData)
  $(domEl).find('#battery').html("#{percentage}<span id='charge-icon'>#{chargeIcon}</span>")

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
    margin-left: 33%

  #time
    color: #d19a66
    text-align: center
    width: 51%

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
