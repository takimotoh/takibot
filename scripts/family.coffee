module.exports = (robot) ->

  robot.hear /朝陽君は？/i, (msg) ->
    num = Math.floor(Math.random() * 10) + 1
    res = ""

    switch num
      when 1
        res = "3歳です"
      when 2
        res = "お調子者です"
      when 3
        res = "キムチ大好き( ﾟДﾟ)"
      when 4
        res = "朝陽「僕ムズムズした…」"
      when 5
        res = "悠陽ちゃんのお兄ちゃんです"
      else
        res = "('ω')"

    msg.send res
