module.exports = (robot) ->

  robot.hear /kindle_(.*)/i, (msg) ->

    command = msg.match[1]
    user = msg.message.user.name
    res = ""

    # kindle_testチャンネルの場合
    if "C25BV33L5" is msg.message.user.room

        # 内容により分岐
        switch command

          # 社員用コマンド
          when "欲しい"
            res = "欲しいのか(´・ω・`)"

          when "リスト"
            res = "これが今ある本の一覧だよ(´・ω・`)"

          when "所持"
            res = "@#{user} さんのレンタルリストだよ(´・ω・`)"

          when "貸して"
            res = "@takimotoh #{user}さんからリクエストだよ(´・ω・`)"
#            res = "○さんからリクエストだよ(´・ω・`)"

          when "返す"
#            res = """
#                  @#{user} さん、端末からその本消しておいてね(´・ω・`)"
#                  @takimotoh  #{user}さんが本返すって(´・ω・`)"
#                  """
            res = "@takimotoh  ○さんが本返すって(´・ω・`)"


          when "help"
            res = "help？？('ω')"

          # 管理者用コマンド
          when "貸す"
            if "takimotoh" is msg.message.user.name
              res = "○ さん、配信したよ(´・ω・`)"
            else
              res = "Kindle管理者用のコマンドっす"

          when "登録"
            if "takimotoh" is msg.message.user.name
              res = "本の情報を登録したよ(´・ω・`)"
            else
              res = "Kindle管理者用のコマンドっす"

          # コマンド無し
          else
            res = "何したいのさ('ω')"

    # kindle_testチャンネルではない場合
    else
      res =  "#kindle_test チャンネルで言ってよ(´・ω・`)"

    # botの返答
    msg.send res
