# Description
#   A Hubot script for choosing at random
# http://qiita.com/bouzuya/items/2e935c99647b93d8ee1d
#
# Configuration:
#   None
#
# Commands:
#   <item1>、<item2>、<item3>から選んで - choose at random
#
# Author:
#   bouzuya <m@bouzuya.net>

module.exports = (robot) ->
  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.reply "#{item}で！"
