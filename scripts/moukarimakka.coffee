module.exports = (robot) ->

  robot.hear /もうかりまっか/i, (msg) ->
    num = Math.floor(Math.random() * 10) + 1
    res = ""

    switch num
      when 1
        res = "ぼちぼちでんな"
      when 2
        res = "めちゃ儲かってます"
      when 3
        res = "あきまへんです"
      when 4
        res = "よろしゅうおます"
      when 5
        res = "あかんなー"
      when 6
        res = "やばたん"
      when 7
        res = "堪忍しとくんなはれ"
      when 8
        res = "あかんわ(´・ω・`)"
      when 9
        res = "ぼちぼちでんな(*^^*)"
      when 10
        res = "笑いとまりまへんがなｗｗ"
      else
        res = "全然あきまへん"

    msg.send res
