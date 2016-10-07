module.exports = (robot) ->

  robot.hear /test/i, (msg) ->
    msg.send  msg.envelope.room
