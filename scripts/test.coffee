module.exports = (robot) ->

  robot.hear /test(.*)/i, (msg) ->
    command = msg.match[1]          # コマンド
    res = ""

    names = ["takimotoh", "aaaa", "bot"]

    switch command
      when "1"
        for name, index in names
            res += "Hello, #{name} (#{index})!"

      else
        res = "?"

    #***********#
    # botの返答 #
    #***********#
    msg.send res

