
module.exports = (robot) ->

  robot.hear /(.*)さんの趣味は(.*)です/i, (msg) ->

    user = msg.match[1].split("@")[1]
    hobby = msg.match[2].split("です")[0]

    Sequelize = require 'sequelize'
    sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
    sequelize.query("UPDATE t_hobby SET hobby=\'#{hobby}\' WHERE user=\'#{user}\'").spread ->
      msg.send """
      っしゃー！ @#{user} さんの趣味を覚えた！うおー！
      """
