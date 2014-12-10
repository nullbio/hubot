packageJson = require '../package.json'

module.exports = (robot) ->
  robot.respond /version/i, (msg) ->
    msg.send "I'm running on version #{packageJson.version}"
