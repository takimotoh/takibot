module.exports = (robot) ->

  robot.hear /おはよう/i, (msg) ->
    msg.send "おはようございます！(*^^*)"

  robot.hear /お早う/i, (msg) ->
    msg.send "お早うごじゃいます(´・ω・｀)ﾈﾑﾈﾑ"
