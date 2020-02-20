# Version: 0.0.2
refreshFrequency: 4000
style: """
    position:absolute
    width: 441px
    margin:0px
    top: 113px
    left: 40px
    color:#FFF

    .player {
        width: 100%
        height: 138px
    }

    #cover
        position: relative
        display:block
        width: 25%
        height: auto

    .meta
        position: relative;
        min-height: 110px
        width: 75%
        margin: 0 0 0 25%;
        display: flex
        flex-direction: column
        justify-content: center
        background-color: rgba(0,0,0,.4)
        padding: 0 20px;
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
        font-family: 'Helvetica Neue'
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
            <p id="title"></p>
            <p id="artist"></p>
        </div>
    </div>
"""

command: "osascript 'sk-music/Music.scpt'"

update: (output, domEl) ->
    iTunesvalues = output.split('~')

    $(domEl).find('#artist').text("#{iTunesvalues[1]}")
    $(domEl).find('#title').text("#{iTunesvalues[0]}")

    if iTunesvalues[0] != " " && iTunesvalues[1] != " "
        html = "<img src='sk-music/images/albumart.jpg'><img src='sk-music/images/albumart.jpg'><img src='sk-music/images/albumart.jpg'>"
        $(domEl).find('#cover').html("")
        $(domEl).find('#cover').html(html)
    else
        $(domEl).find('#cover').html("<img src='sk-music/images/default.png'>")