#-------------------------------
# 全角数字を半角にして返す
#-------------------------------

@hankaku_int = (text) ->
  console.log text
  text.replace(/[０-９]/g, (s)->
    String.fromCharCode(s.charCodeAt(0)-0xFEE0) )