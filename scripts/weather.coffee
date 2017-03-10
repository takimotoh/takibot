module.exports = (robot) ->
  robot.hear /(.*)の天気教えて/i, (msg) ->
    switch msg.match[1]
      when "北海道"
        area = "016010"
      when "青森"
        area = "020010"
      when "岩手"
        area = "030010"
      when "宮城"
        area = "040010"
      when "秋田"
        area = "050010"
      when "山形"
        area = "060010"
      when "福島"
        area = "070010"
      when "茨城"
        area = "080010"
      when "栃木"
        area = "090010"
      when "群馬"
        area = "100010"
      when "埼玉"
        area = "110010"
      when "千葉"
        area = "120010"
      when "東京"
        area = "130010"
      when "神奈川"
        area = "140010"
      when "新潟"
        area = "150010"
      when "富山"
        area = "160010"
      when "石川"
        area = "170010"
      when "福井"
        area = "180010"
      when "山梨"
        area = "190010"
      when "長野"
        area = "200010"
      when "岐阜県"
        area = "210010"
      when "静岡"
        area = "220010"
      when "愛知"
        area = "230010"
      when "三重"
        area = "016010"
      when "滋賀"
        area = "250010"
      when "京都"
        area = "260010"
      when "大阪"
        area = "270000"
      when "兵庫"
        area = "280010"
      when "奈良"
        area = "290010"
      when "和歌山"
        area = "300010"
      when "鳥取"
        area = "310010"
      when "島根"
        area = "320010"
      when "岡山"
        area = "330010"
      when "広島"
        area = "340010"
      when "山口"
        area = "350020"
      when "徳島"
        area = "360010"
      when "香川"
        area = "370000"
      when "愛媛"
        area = "380010"
      when "高知"
        area = "390010"
      when "福岡"
        area = "400010"
      when "佐賀"
        area = "410010"
      when "長崎"
        area = "420010"
      when "熊本"
        area = "430010"
      when "大分"
        area = "440010"
      when "宮崎"
        area = "450010"
      when "鹿児島"
        area = "460010"
      when "沖縄"
        area = "471010"
      else
        area = 1

    request = msg.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=' & area)
    .get()

    request (err, res, body) ->
      json = JSON.parse body
      if area == 1
        res = '( ͡° ͜ʖ ͡° )'
      else
        res = """
              #{json['publicTime']} 発表
              #{json['title']}

              #{json['forecasts'][0]['dateLabel']} #{json['forecasts'][0]['date']}
              #{json['forecasts'][0]['telop']} 最高:#{json['forecasts'][0]['max']['celsius']} 最低:#{json['forecasts'][0]['min']['celsius']}

              #{json['forecasts'][1]['dateLabel']} #{json['forecasts'][1]['date']}
              #{json['forecasts'][1]['telop']} 最高:#{json['forecasts'][1]['max']['celsius']} 最低:#{json['forecasts'][1['min']['celsius']}

              #{json['forecasts'][2]['dateLabel']} #{json['forecasts'][2]['date']}
              #{json['forecasts'][2]['telop']} 最高:#{json['forecasts'][2]['max']['celsius']} 最低:#{json['forecasts'][2]['min']['celsius']}
              """

      msg.send res
