module.exports = (robot) ->

  robot.hear /test1_(.*)/i, (msg) ->
    command = msg.match[1]          # コマンド
    res = ""

    names = ["takimotoh", "aaaa", "bot"]

    switch command

      when "1"
        for name, index in names
            res += "Hello, #{name} (#{index})!"

      when "id"
          res = msg.message.user.id

      when "name"
          res = msg.message.user.name

      when "room"
          res = msg.message.user.room

      else
        res = "?"

    #***********#
    # botの返答 #
    #***********#
    msg.send res

