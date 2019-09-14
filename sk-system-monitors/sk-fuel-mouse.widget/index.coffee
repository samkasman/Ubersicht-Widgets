command: 'ioreg -n "AppleDeviceManagementHIDEventService" | grep -i "batterypercent"'

refreshFrequency: 60000

style: """
  display: flex
  bottom: 237px
  left: 40px
  min-width: 200px;
  color: #fff
  font-family: Helvetica Neue
  background-color: rgba(0,0,0,0.72)
  padding: 0 10px;
  text-shadow: 0 0 1px rgba(#000, 0.5)
  font-size: 24px

  .battery-status
    display: flex
    font-weight: 200

  .percentage
    flex: 1
    font-weight: 100
    text-align: right

"""


render: -> """
  <div class="battery-status">Mouse Fuel:</div><div class='percentage'></div>
"""

update: (output, domEl) ->
  output = output.slice(-3).slice(0, -1)
  $(domEl).find('.percentage').html(output + '%')
