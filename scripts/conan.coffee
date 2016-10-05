module.exports = (robot) ->

  robot.hear /するやで/i, (msg) ->
    msg.send "せやかて工藤(´・ω・`)"

  robot.hear /すごいやで/i, (msg) ->
    msg.send "なんやて工藤(*_*)"

  robot.hear /ペロッ/i, (msg) ->
    msg.send "これは青酸カリ(´・ω・`)"

  robot.hear /カリッ/i, (msg) ->
    msg.send "これは青酸ペロ(´・ω・`)"

  robot.hear /お前は一体/i, (msg) ->
    msg.send "江戸川コナン、探偵さ(´・ω・`)"

  robot.hear /たった一つの真実見抜く/i, (msg) ->
    msg.send "見た目は子供頭脳は大人 その名は名探偵コナン(´・ω・`)"

  robot.hear /この謎、必ず解いてみせるぜ！/i, (msg) ->
    msg.send "じっちゃんの名にかけて！(´・ω・`)"

  robot.hear /おい工藤！/i, (msg) ->
    msg.send "おい工藤！どないしてん工藤！せやかて工藤！ところで工藤！ひさしぶりやな工藤！どこいくねん工藤！おう工藤！せや工藤！なあ工藤！こら工藤！待て工藤！あかんて工藤！乗れ工藤！元気か工藤！大丈夫か工藤！ほれ工藤！工藤や工藤！！"
