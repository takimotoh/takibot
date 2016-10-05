module.exports = (robot) ->

  robot.hear /あっー/i, (msg) ->
    msg.send "あ”っー！(*^^*)"

  robot.hear /あ”っー/i, (msg) ->
    msg.send "あ”っーーーー！！"

  robot.hear /あ"っー/i, (msg) ->
    msg.send "あ”っーーーー！！"

  robot.hear /あ"っーーーー/i, (msg) ->
    msg.send "あ”っーーーーーーーー！！あ”っーーーーー！！！"

  robot.hear /や　ら　な　い　か/i, (msg) ->
    msg.send "https://www.youtube.com/watch?v=6Sosfh60448"

  robot.hear /や ら な い か/i, (msg) ->
    msg.send "https://ja.wikipedia.org/wiki/%E3%81%8F%E3%81%9D%E3%81%BF%E3%81%9D%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF"

  robot.hear /本マグロとは？/i, (msg) ->
    msg.send "クロマグロ（黒鮪、学名：Thunnus orientalis）は、スズキ目サバ科に分類される海水魚の一種。

日本沿岸を含む太平洋の熱帯・温帯海域に広く分布する大型魚で、重要な食用魚である。生鮮魚介類として流通する場合にはホンマグロの名称も用いられる[2]。このほか地方名としては、シビ、クロシビ（各地）、ハツ（高知）などがある。また、特に幼魚を指す地方名としてヨコ、ヨコワ（近畿・四国）、メジ、メジマグロ（中部・関東）、シンコ、ヨコカワ、ヒッサゲなどもある。

分類上では大西洋産のタイセイヨウクロマグロ T. thynnus と同種、またはタイセイヨウクロマグロの亜種 T. t. orientalis とする見解もある。
"
