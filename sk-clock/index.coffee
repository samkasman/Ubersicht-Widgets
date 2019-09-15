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
  top: 40px
  background-color: rgba(0,0,0,0.72)
  padding: 10px 22px;
  min-width: 480px

  @font-face {
    font-family: 'VCR OSD MONO';
    src: url('sk-clock/VCR_OSD_MONO.ttf');
  }

  h1
    font-family: 'VCR OSD MONO';
    font-size: 100px
    font-weight: 100
    margin: 0
    padding: 0
  """
