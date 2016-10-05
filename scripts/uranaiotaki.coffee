module.exports = (robot) ->

  robot.hear /今日の大滝さんの運勢/i, (msg) ->
    num = Math.floor(Math.random() * 10) + 1
    res = ""

    switch num
      when 1
        res = "ごめんなさい。良いことありません。。"
      when 2
        res = "ごめんなさい。良いことありません。。"
      when 3
        res = "ごめんなさい。良いことありません。。"
      when 4
        res = "ごめんなさい。良いことありません。。"
      when 5
        res = "ごめんなさい。良いことありません。。"
      when 6
        res = "ごめんなさい。良いことありません。。"
      when 7
        res = "ごめんなさい。良いことありません。。"
      when 8
        res = "ごめんなさい。良いことありません。。"
      when 9
        res = "ごめんなさい。良いことありません。。"
      when 10
        res = "ごめんなさい。良いことありません。。"
      else
        res = "ごめんなさい。良いことありません。。"

    msg.send res
