module.exports = (robot) ->

  robot.hear /今日の運勢/i, (msg) ->
    num = Math.floor(Math.random() * 10) + 1
    res = ""

    switch num
      when 1
        res = "☆１つ。それでも笑顔でいきましょう！"
      when 2
        res = "☆２つ。右足に気をつけて。"
      when 3
        res = "☆３つ。バグ、仕込むかも。"
      when 4
        res = "☆４つ。飲み物をこぼさないように。"
      when 5
        res = "☆５つ。本屋さんに行くといいかも。"
      when 6
        res = "☆６つ。お酒の席に幸運あり。"
      when 7
        res = "☆７つ。努力が実ります！"
      when 8
        res = "☆８つ。楽しい一日になりますよ(*^^*)"
      when 9
        res = "☆９つ。何かを始めるなら、今日でしょう！"
      when 10
        res = "☆MAX！何をしても幸せです(*^^*)"
      else
        res = "☆無限大。これが出たらバグってるよ。"

    msg.send res
