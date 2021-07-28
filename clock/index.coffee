format = '%d %a %l:%M %p'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 30000

style: """
  font-family: 'VCR OSD Mono'
  left: 40px
  top: 40px
  padding: 10px;
  min-width: 461px

  @font-face {
    font-family: 'VCR OSD MONO';
    src: url('sk-clock/VCR_OSD_MONO.ttf');
  }

  h1
    color: white
    font-family: 'VCR OSD MONO'
    font-size: 52px
    font-weight: 300
    margin: 0
    padding: 0

  .glow {
    animation: glow 1s ease-in-out infinite alternate;
  }

  @-webkit-keyframes glow {
    from {
      text-shadow: 0 0 0 #fff, 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #fff;
      opacity: 0.20;
    }
    to {
      text-shadow: 0 0 0 #fff, 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #fff;
      opacity: 0.80;
    }
  }
  """

render: (output) -> """
  <h1 class="glow">#{output}</h1>
"""
