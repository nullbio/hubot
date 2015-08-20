# Description:
#   Determine the version of hubot!
#
# Commands:
#   hubot version - Displays the version hubot is running.
fs = require('fs')
link = 'https://github.com/disvelop/hubot/commit/'

module.exports = (robot) ->
  robot.respond /version/i, (msg) ->
    version = fs.readFileSync('.source_version', 'utf8')
    msg.send "My latest build was #{version.substr(0, 7)} – #{link}#{version}"
