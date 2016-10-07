module.exports = (robot) ->

    robot.hear /test2_(.*)/i, (msg) ->
        args1 = ""
        args2 = ""
        args3 = ""
        args4 = ""
  
        args1 = msg.match[1].split(" ")[0]          # コマンド
        args2 = msg.match[1].split(" ")[1]          # コマンド
        args3 = msg.match[1].split(" ")[2]          # コマンド
        args4 = msg.match[1].split(" ")[3]          # コマンド
        res = ""

        switch args1

            when "1"
                res = args1 + ":" + args2 + ":" + args3 + ":" + args4

            when "2"
                if args2 is null or args3 is null or args4 is null
                    res = "args はnull"
                else
                    res = args1 + ":" + args2 + ":" + args3 + ":" + args4




            else
                res = "?"

        #***********#
        # botの返答 #
        #***********#
        msg.send res

