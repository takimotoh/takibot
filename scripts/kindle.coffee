_ = require 'lodash'

module.exports = (robot) ->

  robot.hear /kindleコメ/i, (msg) ->

    if _.contains ['kindle', 'kindle_test'], msg.envelope.room

        if _.contains ['takimotoh'], msg.envelope.user.name
          msg.send "Kindle!!"

        else
          msg.send "Kindle管理者用のコマンドっす"
      
    else
      msg.send "#kindle チャンネルで言ってよ(´・ω・`)"


