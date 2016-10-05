module.exports = (robot) ->

  robot.hear /会社の住所/i, (msg) ->
    msg.send "〒160-0022　東京都新宿区新宿1-2-9 JF新宿御苑ビル7F"

  robot.hear /会社の電話番号/i, (msg) ->
    msg.send "TEL 03-5315-4668 / FAX 03-5315-4669"

  robot.hear /会社のホームページ/i, (msg) ->
    msg.send "http://egao-inc.co.jp/"

  robot.hear /会社のHP/i, (msg) ->
    msg.send "http://egao-inc.co.jp/"

  robot.hear /会社のFB/i, (msg) ->
    msg.send "https://www.facebook.com/iiegao"

  robot.hear /スタジオのFB/i, (msg) ->
    msg.send "https://www.facebook.com/groups/1019489301397547/"
