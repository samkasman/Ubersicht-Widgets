format = '%d %a %l:%M %p'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 30000

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: #FFFFFF
  font-family: 'VCR OSD Mono'
  left: 40px
  bottom: 380px
  background-color: rgba(0,0,0,0.72)
  padding: 10px;
  min-width: 461px

  @font-face {
    font-family: 'VCR OSD MONO';
    src: url('sk-clock/VCR_OSD_MONO.ttf');
  }

  h1
    font-family: 'VCR OSD MONO';
    font-size: 52px
    font-weight: 300
    margin: 0
    padding: 0
  """
