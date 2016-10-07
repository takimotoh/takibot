module.exports = (robot) ->

  robot.hear /kindleコメ/i, (msg) ->

    if "C25BV33L5" is msg.message.user.room

        if "takimotoh" is msg.message.user.room
          msg.send "Kindle!!"

        else
          msg.send "Kindle管理者用のコマンドっす"
      
    else
      msg.send "#kindle チャンネルで言ってよ(´・ω・`)"


