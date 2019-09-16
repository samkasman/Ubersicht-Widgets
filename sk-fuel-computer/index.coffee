command: "pmset -g batt | grep -o '[0-9]*%'"

refreshFrequency: 60000

style: """
  display: flex
  bottom: 206px
  left: 40px
  width: 461px
  color: #fff
  font-family: 'Helvetica Neue'
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
  <div class="battery-status">PC Fuel:</div><div class='percentage'></div>
"""

update: (output, domEl) ->
  $(domEl).find('.percentage').html(output)
