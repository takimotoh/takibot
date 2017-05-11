module.exports = (robot) ->

  robot.hear /^＠(.*)/i, (msg) ->

    from = msg.message.user.name                   # 発言者
    to = msg.match[1].split(/\r\n|\n|\r|\s/)[0]    # 発進先

    # メッセージ 空白・改行を削除し、送信先も削除
    message = msg.match[1].replace(/[\r\n|\n|\r|\s]/g, "")
    message = message.replace(to, "")

    if message is ""
      sendMessage = "@#{from} ｽﾞｲ₍₍(ง˘ω˘)ว⁾⁾ｽﾞｲ"
      msg.send sendMessage
      return

    #********#
    # 送信先 #
    #********#
    switch to

      # 田中 寿法
      when "寿さん", "寿", "代表", "社長", "シャッチョさん"
        mention = "tanakats"

      # 牛木 紀幸
      when "牛木さん", "キット", "キットさん", "kit", "kitさん", "牛キット", "牛キットさん"
        mention = "ushikit"

      # 滝本 博昭
      when "滝本", "滝本さん", "タッキー", "たっきー", "tk"
        mention = "takimotoh"

      # 大滝 昇平
      when "大滝", "大滝さん", "大滝くん", "中滝", "中滝さん", "中滝くん", "小滝", "小滝さん", "小滝くん"
        mention = "ohtakis"

      # 篠田 行宏
      when "篠田", "篠田さん", "いっくん", "いくちゃん", "シノディー", "しのでぃー"
        mention = "shinodai"

      # 根本 達郎
      when "根本", "根本さん", "ネモティー"
        mention = "nemotot"

      # 多久和 宏史
      when "多久和", "多久和さん", "和尚"
        mention = "takuwah"

      # 成海 弘太郎
      when "成海", "成海さん", "なる", "なるみん", "ナル"
        mention = "narumik"

      # 羽田 尚美
      when "羽田", "羽田さん", "尚美さん"
        mention = "akaiwan"

      # 金井 孝之
      when "金井", "金井さん", "金井くん", "金ちゃん", "孝ちゃん"
        mention = "kanait"

      # 渡邊 大樹
      when "渡邊", "渡邊さん", "なべひろさん", "ナベヒロさん"
        mention = "watanabeh"

      # 田中 惠
      when "たなめぐ", "たなめぐさん", "タナメグ", "タナメグさん", "恵さん", "めぐめぐ"
        mention = "tanakam"

      # 大山 智樹
      when "大山", "大山さん", "ダイナマイト", "ダイナマイトさん", "ダイナマイト田中", "ダイナマイト田中さん", "変態"
        mention = "oyamat"

      # 下地 希一
      when "下地", "下地さん", "下地くん", "希一", "希一くん", "希一さん", "きーち"
        mention = "shimojik"

      # 渡邉 俊一
      when "渡邉", "渡邉さん", "渡邉くん", "俊ちゃん", "しゅんちゃん"
        mention = "watanabes"

      # 樋津 智行
      when "樋津", "樋津さん", "淳二", "淳二さん", "稲川淳二"
        mention = "hitsut"

      # 指定外
      else
        sendMessage = "@#{from} ('ω') ﾀﾞﾚ?"
        msg.send sendMessage
        return

    #****************#
    # メッセージ送信 #
    #****************#
    if mention is "ohtakis"
      sendMessage = """
                    ＿人人人人人人＿
                    ＞  @ohtakis  ＜
                    ￣Y^Y^Y^Y^Y^￣
                    #{message}
                    """
    else
      # sendMessage = '@#{mention}  from:#{from}\n#{message}'
      sendMessage = "@#{mention}  from:#{from}\n#{message}"

    msg.send sendMessage
