module.exports = (robot) ->

  robot.hear /winしね/i, (msg) ->
    msg.send "Windowsだめ、絶対(´・ω・`)"
