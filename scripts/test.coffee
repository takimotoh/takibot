module.exports = (robot) ->

robot.hear /(test1)/i, (msg) ->
    msg.send  msg.envelope.room

robot.hear /(test2)/i, (msg) ->
    msg.send  msg.envelope.user.id

robot.hear /(test3)/i, (msg) ->   # 名前(takimotoh)
    msg.send  msg.envelope.user.name

robot.hear /(test4)/i, (msg) ->
    msg.send  msg.envelope.user.room

robot.hear /(test5)/i, (msg) ->
    msg.send  msg.envelope.message.user

robot.hear /(test6)/i, (msg) ->
    msg.send  msg.envelope.message.user

robot.hear /(test7)/i, (msg) ->
    msg.send  msg.envelope.message.text

robot.hear /(test8)/i, (msg) ->
    msg.send  msg.envelope.message.id

robot.hear /(test9)/i, (msg) ->
    msg.send  msg.envelope.message.room

robot.hear /(test10)/i, (msg) ->
    msg.send  msg.user.id

robot.hear /(test11)/i, (msg) ->
    msg.send  msg.user.id

robot.hear /(test12)/i, (msg) ->
    msg.send  msg.message.user.name

robot.hear /(test13)/i, (msg) ->
    msg.send  msg.message.user.room

robot.hear /(test14)/i, (msg) ->
    msg.send  msg.message.text

robot.hear /(test15)/i, (msg) ->
    msg.send  msg.message.room


