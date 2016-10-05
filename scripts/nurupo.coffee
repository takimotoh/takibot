# Description:
#   Joke commands.
#
#   https://gist.github.com/vexus2/94f1d666485931a8c9c6
#
# Commands:
#   ぬるぽ - You reply with, "ｶﾞｯ" When you post a "ぬるぽ" word.
#
# Notes:
#   ネタ/ジョーク系のbot全般
 
module.exports = (robot) ->
  robot.hear /ぬるぽ/, (msg) ->
    msg.send """
```
   Λ＿Λ     ＼＼
（  ・∀・）  | | ｶﾞｯ
 と     ）  | |
  Ｙ /ノ     人
   / ）    < >   _Λ  ∩
＿/し'   ／／  Ｖ｀Д´）/
（＿フ彡             / ←>> @#{msg.message.user.name}
```
  """
