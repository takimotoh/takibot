module.exports = (robot) ->

  robot.hear /寝坊してしま/i, (msg) ->
    msg.send "寝坊ｗｗ"

  robot.hear /眠すぎる/i, (msg) ->
    msg.send "寝ちゃうの？(´・ω・`)"

  robot.hear /電車遅延/i, (msg) ->
    msg.send "まじかJR最低やな(´・ω・`)"

  robot.hear /電車が遅れ/i, (msg) ->
    msg.send "JRあかんな(´・ω・`)"
