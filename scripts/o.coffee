module.exports = (robot) ->

  robot.hear /がんばるぞ/i, (msg) ->
    msg.send "おー！"

  robot.hear /頑張るぞ/i, (msg) ->
    msg.send "おー！"

  robot.hear /がんばる象/i, (msg) ->
    msg.send "ｗｗジワるｗｗｗ"

  robot.hear /頑張る象/i, (msg) ->
    msg.send "ｗｗジワるｗｗｗ"

  robot.hear /頑張るzoo/i, (msg) ->
    msg.send "ｗｗｗ寝るんかいｗｗｗ"
