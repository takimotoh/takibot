module.exports = (robot) ->

  robot.hear /お腹いっぱい/i, (msg) ->
    msg.send "(　´)Д(｀)むしゃむしゃ"

  robot.hear /食べ過ぎた/i, (msg) ->
    msg.send "運動もしたほうがいいよ(*^^*)"

  robot.hear /満腹だ/i, (msg) ->
    msg.send "おにぎり食べよう(*^^*)"
