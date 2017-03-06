module.exports = (robot) ->

  robot.hear /@(.*)/i, (msg) ->

    user = msg.message.user.name              # 発言者
    destination = msg.match[1].split(" ")[1]  # 発進先
    message = msg.match[2]                    # メッセージ

    #********#
    # 送信先 #
    #********#
    switch destination

        when "ダイナマイト"
            mention = "oyamat"

        when "タッキー"
            mention = "takimotoh"

        else
            message = "@#{user} 誰宛やそれ"
            msg.send message
            return

    #************#
    # メッセージ #
    #************#
    sendMessage = "@#{mention} #{message}"

    #*********************#
    # botの返答メッセージ #
    #*********************#
    msg.send sendMessage
