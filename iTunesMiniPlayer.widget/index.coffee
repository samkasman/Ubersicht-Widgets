# Version: 0.0.2
refreshFrequency: 4000
style: """
    position:absolute
    margin:0px
    top: 140px
    left: 40px
    width:auto
    color:#FFF

    .player {
        width: 552px;
        height: 138px
    }
    #cover
        position: relative
        display:block
        width: 25%

    .meta
        position: relative;
        width: 75%
        height: 100%
        margin: 0 0 0 25%;
        display: flex
        flex-direction: column
        justify-content: center
        background-color: rgba(0,0,0,0.4)
        padding: 0 20px;
        min-height: 124px
    img
        position: relative
        width: 100%
        height: auto
        position: absolute
        top: 0
        left: 0
    h1,
    p
        margin: 0
        font-family: Helvetica Neue
        font-size: 20px
        font-weight: 100
        margin: 0;
    p:nth-child(2)
        font-size: 22px
        font-weight: 500
"""

render: -> """
    <div class="player">
        <div id="cover"></div>
        <div class="meta">
            <p>Now Playing:</p>
            <p id="iTunesTitle"></p>
            <p id="iTunesArtist"></p>
        </div>
    </div>
"""

command: "osascript 'iTunesMiniPlayer.widget/iTunes.scpt'"

update: (output, domEl) ->
    iTunesvalues = output.split('~')

    $(domEl).find('#iTunesArtist').text("#{iTunesvalues[1]}")
    $(domEl).find('#iTunesTitle').text("#{iTunesvalues[0]}")

    if iTunesvalues[0] != " " && iTunesvalues[1] != " "
        html = "<img src='iTunesMiniPlayer.widget/images/albumart.jpg'><img src='iTunesMiniPlayer.widget/images/albumart.jpg'><img src='iTunesMiniPlayer.widget/images/albumart.jpg'>"
        $(domEl).find('#cover').html("")
        $(domEl).find('#cover').html(html)
    else
        $(domEl).find('#cover').html("<img src='iTunesMiniPlayer.widget/images/default.png'>")