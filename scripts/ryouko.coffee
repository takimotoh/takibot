module.exports = (robot) ->

  robot.hear /ryouko/i, (msg) ->
    num = Math.floor(Math.random() * 10) + 1
    res = ""

    switch num
      when 1
        res = "奥さんです"
      when 2
        res = "妻です"
      when 3
        res = "I Love You"
      when 4
        res = "hellow!"
      when 5
        res = "thank you"
      else
        res = "hi!"

    msg.send res
