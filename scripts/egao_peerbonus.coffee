module.exports = (robot) ->

  robot.hear /:egao_peerbonus:/i, (msg) ->
    msg.send "ドーン！"
