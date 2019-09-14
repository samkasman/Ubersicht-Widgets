command: "curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"

refreshFrequency: 600000 # ms - 10 minutes

style: """
  bottom: 40px
  left: 277px
  color: #fff
  font-family: Helvetica Neue
  background-color: rgba(0,0,0,0.72)
  padding: 0 10px;

  .wan-ip
    display: flex
    align-items: center;
    font-size: 24px
    font-weight: 200

  span
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    padding-left: 12px
    font-weight: 100

"""


render: -> """
  <div class="wan-ip">WAN:<span class='ip_address'></span></div>
"""

update: (output, domEl) ->
  $(domEl).find('.ip_address').html(output)
