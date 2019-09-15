format = '%d %a %l:%M %p'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 30000

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: #FFFFFF
  font-family: 'Helvetica Neue'
  left: 40px
  top: 40px
  background-color: rgba(0,0,0,0.72)
  padding: 0 20px;
  width: 461px

  h1
    font-size: 64px
    font-weight: 100
    margin: 0
    padding: 0
  """
