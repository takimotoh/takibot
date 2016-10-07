module.exports = (robot) ->

  robot.hear /test2_(.*)/i, (msg) ->
    com1 = msg.match[1].split(" ")[0]          # コマンド
    com2 = msg.match[1].split(" ")[1]          # コマンド
    com3 = msg.match[1].split(" ")[2]          # コマンド
    com4 = msg.match[1].split(" ")[3]          # コマンド
    res = ""

    switch com1

        when "1"
            res = com1 + ":" + com2 + ":" + com3 + ":" + com4




        else
            res = "?"

    #***********#
    # botの返答 #
    #***********#
    msg.send res

