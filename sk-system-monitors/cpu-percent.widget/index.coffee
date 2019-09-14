command: "ps -A -o %cpu | awk '{s+=$1} END {print s \"%\"}'"

refreshFrequency: 1000

style: """
  display: flex
  bottom: 175px
  left: 40px
  min-width: 200px;
  color: #fff
  font-family: Helvetica Neue
  background-color: rgba(0,0,0,0.4)
  padding: 0 10px;
  text-shadow: 0 0 1px rgba(#000, 0.5)
  font-size: 24px

  .cpu-status
    display: flex
    font-weight: 200

  .percentage
    flex: 1
    font-weight: 100
    text-align: right

"""


render: -> """
  <div class="cpu-status">
    CPU Usage:
  </div>
  <div class='percentage'/>
"""

update: (output, domEl) ->
  $(domEl).find('.percentage').html(output)
