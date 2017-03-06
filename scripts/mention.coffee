module.exports = (robot) ->

  robot.hear /＠(.*)/i, (msg) ->

    user = msg.message.user.name              # 発言者
    destination = msg.match[1].split(\s])[0]  # 発進先
    message = msg.match[1].split(\s)[1]      # メッセージ

    #********#
    # 送信先 #
    #********#
    switch destination

        when "ダイナマイト"
            mention = "oyamat"

        when "タッキー"
            mention = "takimotoh"

        else
            sendMessage = "@#{user} 誰宛やそれ"
            msg.send sendMessage
            return

    #************#
    # メッセージ #
    #************#
    sendMessage = "@#{mention}\n#{message}"

    #*********************#
    # botの返答メッセージ #
    #*********************#
    msg.send sendMessage
