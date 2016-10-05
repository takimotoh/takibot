module.exports = (robot) ->

  robot.hear /内緒/i, (msg) ->
    msg.send "(　´д)ｺｿ(´д｀)ｺｿ(д｀ )"

  robot.hear /秘密/i, (msg) ->
    msg.send "(　´д)ｺｿ(´д｀)ｺｿ(д｀ )"

  robot.hear /こっそり/i, (msg) ->
    msg.send "(　´д)ｺｿ(´д｀)ｺｿ(д｀ )"
