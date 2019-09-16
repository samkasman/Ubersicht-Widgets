format = '%d %a %l:%M %p'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 30000

style: """
  font-family: 'VCR OSD Mono'
  left: 40px
  top: 40px
  background-color: rgba(0,0,0,0.72)
  padding: 10px;
  min-width: 461px

  @font-face {
    font-family: 'VCR OSD MONO';
    src: url('sk-clock/VCR_OSD_MONO.ttf');
  }

  h1
    color: rgba(255,255,255,1)
    font-family: 'VCR OSD MONO';
    font-size: 52px
    font-weight: 300
    margin: 0
    padding: 0

  .glow {
    animation: glow 1s ease-in-out infinite alternate;
  }

  @-webkit-keyframes glow {
    from {
      text-shadow: 0 0 0px #fff, 0 0 10px #fff, 0 0 20px #e60073, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 70px #e60073;
      opacity: 0.2;
    }
    to {
      text-shadow: 0 0 5px #fff, 0 0 15px #ff4da6, 0 0 25px #ff4da6, 0 0 35px #ff4da6, 0 0 45px #ff4da6, 0 0 55px #ff4da6, 0 0 75px #ff4da6;
      opacity: 0.85;
    }
  }
  """

render: (output) -> """
  <h1 class="glow">#{output}</h1>
"""
