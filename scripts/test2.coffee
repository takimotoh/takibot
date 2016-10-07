module.exports = (robot) ->

  robot.hear /test2_(.*) (.*) (.*) (.*)/i, (msg) ->
    com1 = msg.match[1]          # コマンド
    com2 = msg.match[2]          # コマンド
    com3 = msg.match[3]          # コマンド
    com4 = msg.match[4]          # コマンド
    res = ""

    switch com

        when "1"
            res = com1 + ":" + com2 + ":" + com3 + ":" + com4




        else
            res = "?"

    #***********#
    # botの返答 #
    #***********#
    msg.send res

