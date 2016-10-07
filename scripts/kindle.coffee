module.exports = (robot) ->

    robot.hear /kindle_(.*)/i, (msg) ->

        #*************************************************************#
        # 定数                                                        #
        #*************************************************************#
        # kindle_testチャンネルのID
        room = "C25BV33L5"

        # 購入許可者リスト
        eraihito = [ "tanakats", "aaaaa" ]

        # Kindle管理者リスト
        adminMember = [ "tanakats", "shinodai", "takimotoh" ]

        # Kindleメイン管理者
        mainAdmin = "takimotoh"

        # 管理者以外時のメッセージ
        kanrisyadake = "管理者用のコマンドっす"

        # 購入許可者以外時のメッセージ
        daihyoudake  = "代表専用( *´艸｀)"

        # helpコマンドメッセージ
        helpMsg = """
                  \`\`\`
                  【コマンド一覧】
                  ＜本を買って欲しい＞
                      kindle_欲しい␣ASINコード
                  ＜蔵書一覧を見たい＞
                      kindle_リスト
                  ＜自分の借りている本を見たい＞
                      kindle_所持
                  ＜本を貸して欲しい＞
                      kindle_貸して␣蔵書一覧の管理番号
                  ＜本を返したい＞
                      端末より削除後、
                      kindle_返す␣蔵書一覧の管理番号
                  \`\`\`
                  """

        # kanriコマンドメッセージ
        kanriMsg = """
                   \`\`\`
                   【エライ人用】
                       ＜管理者に購入OKの指示＞
                           kindle_ok␣ASINコード
                       ＜管理者に購入NGの指示＞
                           kindle_no␣ASINコード

                   【管理者用】
                       ＜本を買った時＞
                           kindle_買った␣ASINコード
                       ＜本を配信する時＞
                           kindle_配信␣貸して欲しい人␣蔵書一覧の管理番号
                       ＜本を返してもらった時＞
                           kindle_返却␣返却者␣蔵書一覧の管理番号
                       ＜名前の登録＞
                           kindle_入社␣slack名␣フルネーム
                       ＜名前の削除＞
                           kindle_退社␣slack名␣フルネーム
                    \`\`\`
                    """

        # コマンド無し時メッセージ
        noCommand = """
        何したいのさ('ω')
        help見たいなら、kindle_help
        管理者用help見たいなら、kindle_kanri
        """

        #*************************************************************#
        # 変数                                                        #
        #*************************************************************#
        command = msg.match[1]          # コマンド
        user = msg.message.user.name    # 発言者
        res = "ERROR"                   # botの返答
        name = ""                       # 

        #=============================#
        # kindle_testチャンネルの場合 #
        #=============================#
        if room is msg.message.user.room

            # 内容により処理分岐
            switch command

                #----------------#
                # 社員用コマンド #
                #----------------#
                when "欲しい"
                    for erai, index in eraihito
                        res = "@#{erai}さん、#{user}さんが本欲しいって(´・ω・`)"
                        msg.send res
                    res = "@#{user} さん、申請の許可待ちだよ(´・ω・`)"

                when "リスト"
                    res = "これが今ある本の一覧だよ(´・ω・`)"

                when "所持"
                    res = "@#{user} さんのレンタルリストだよ(´・ω・`)"

                when "貸して"
                    res = "@#{mainAdmin}  #{user}さんからリクエストだよ(´・ω・`)"

                when "返す"
                    res = """
                    @#{user} さん、端末からその本消しておいてね(´・ω・`)"
                    @#{mainAdmin}  #{user}さんが本返すって(´・ω・`)"
                    """

                when "help"
                    res = helpMsg

                #--------------------#
                # 田中さん用コマンド #
                #--------------------#
                when "ok"
                    res = daihyoudake
                    for name, index in eraihito
                        if name is msg.message.user.name
                            res = "@#{mainAdmin}  本買っていいって(´・ω・`)"

                when "no"
                    res = daihyoudake
                    for name, index in eraihito
                        if name is msg.message.user.name
                            res = "ダメだって(´・ω・`)"

                #------------------#
                # 管理者用コマンド #
                #------------------#
                when "買った"
                    res = kanrisyadake
                    for name, index in adminMember
                        if name is msg.message.user.name
                            res = "本の情報を登録したよ(´・ω・`)"

                when "配信"
                    res = kanrisyadake
                    for name, index in adminMember
                        if name is msg.message.user.name
                            res = "申請者さん、配信したよ(´・ω・`)"

                when "返却"
                    res = kanrisyadake
                    for name, index in adminMember
                        if name is msg.message.user.name
                            res = "返してもらったよ(´・ω・`)"

                when "入社"
                    res = kanrisyadake
                    for name, index in adminMember
                        if name is msg.message.user.name
                            res = "名前を登録したよ(´・ω・`)"

                when "退社"
                    res = kanrisyadake
                    for name, index in adminMember
                        if name is msg.message.user.name
                            res = "名前を削除したよ(´・ω・`)"

                when "kanri"
                    res = kanrisyadake
                    for name, index in adminMember
                        if name is msg.message.user.name
                            res = kanriMsg

                #-------------#
                # コマンド無し#
                #-------------#
                else
                    res = noCommand

        #===================================#
        # kindle_testチャンネルではない場合 #
        #===================================#
        else
            res = "#kindle_test チャンネルで言ってよ(´・ω・`)"

        #*********************#
        # botの返答メッセージ #
        #*********************#
        msg.send res

