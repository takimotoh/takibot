module.exports = (robot) ->

  robot.hear /summon bask/i, (msg) ->
    num = Math.floor(Math.random() * 9) + 1
    res = ""

    switch num
      when 1
        res = ":baruku: 赤い彗星だと!? バカな？"
      when 2
        res = ":baruku: 一般将校は黙ってろ！ここはティターンズの拠点である！ 正規の連邦軍と、やり方が違う！"
      when 3
        res = ":baruku: 愛人にとっては都合が良かったのではないのか？"
      when 4
        res = ":baruku: 汚名挽回だと…？ それは実績をあげた者が言う台詞だ"
      when 5
        res = ":baruku: シロッコ…貴公の許せんことは、自分以上に能力の高いものがいない、と思っていることだ。馬鹿にするな！！"
      when 6
        res = ":baruku: 我々は人殺しの集団ではない!!"
      when 7
        res = ":baruku: 正面!? シロッコのモビルスーツ隊が!!"
      when 8
        res = ":baruku: ヤザンは、本気なのかーっ！"
      else
        res= ":baruku: やかましい！ ヤツらを一撃せねばおさまらん！"

    msg.send res
