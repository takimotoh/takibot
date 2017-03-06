module.exports = (robot) ->

  robot.hear /^＠(.*)/i, (msg) ->

    user = msg.message.user.name                       # 発言者
    destination = msg.match[1].split(/\n|\r\n|\s/)[0]  # 発進先
    message = msg.match[1].split(/\n|\r\n|\s/)[1]      # メッセージ

    unless message?
      sendMessage = "@#{user} 改行した？"
      msg.send sendMessage
      return

    #********#
    # 送信先 #
    #********#
    switch destination

      when "寿さん", "寿", "代表", "社長", "シャッチョさん"
        mention = "tanakats"

      when "牛木さん", "キット", "キットさん", "kit", "kitさん", "牛キット", "牛キットさん"
        mention = "ushikit"

      when "滝本", "滝本さん", "タッキー", "たっきー", "tk"
        mention = "takimotoh"

      when "大滝", "大滝さん", "大滝くん", "中滝", "中滝さん", "中滝くん", "小滝", "小滝さん", "小滝くん"
        mention = "ohtakis"

      when "篠田", "篠田さん", "いっくん", "いくちゃん", "シノディー", "しのでぃー"
        mention = "shinodai"

      when "根本", "根本さん", "ネモティー"
        mention = "nemotot"

      when "多久和", "多久和さん", "和尚"
        mention = "takuwah"

      when "成海", "成海さん", "なる", "なるみん", "ナル"
        mention = "narumik"

      when "羽田", "羽田さん", "尚美さん"
        mention = "akaiwan"

      when "金井", "金井さん", "金井くん", "金ちゃん", "孝ちゃん"
        mention = "kanait"

      when "渡邊", "渡邊さん", "なべひろさん", "ナベヒロさん"
        mention = "watanabeh"

      when "たなめぐ", "たなめぐさん", "タナメグ", "タナメグさん", "恵さん", "めぐめぐ"
        mention = "tanakam"

      when "大山", "大山さん", "ダイナマイト", "ダイナマイトさん", "ダイナマイト田中", "ダイナマイト田中さん", "変態"
        mention = "oyamat"

      when "下地", "下地さん", "下地くん", "希一", "希一くん", "希一さん", "きーち"
        mention = "shimojik"

      when "渡邉", "渡邉さん", "渡邉くん", "俊ちゃん", "しゅんちゃん"
        mention = "watanabes"

      when "樋津", "樋津さん", "淳二", "淳二さん", "稲川淳二"
        mention = "hitsut"

      else
        sendMessage = "@#{user} 誰宛やそれ"
        msg.send sendMessage
        return

    #****************#
    # メッセージ送信 #
    #****************#
    sendMessage = "@#{mention}\n#{message}"
    msg.send sendMessage
