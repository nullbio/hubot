# Description:
#   Determine the version of hubot!
#
# Commands:
#   hubot version - Displays the version hubot is running.
childProcess = require('child_process')
link = 'https://github.com/disvelop/hubot/commit/'

module.exports = (robot) ->
  robot.respond /version/i, (msg) ->
    version = childProcess.execSync("git log --pretty=format:'%h' -n 1")
    msg.send "My latest build was #{version} -- #{link}#{version}"
