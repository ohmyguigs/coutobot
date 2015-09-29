#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  #QUAL A BOA function conde
  robot.respond /boa help/i, (res) ->
    res.send "Use o comando: coutobot set boa <a boa>"

  robot.respond /set boa (.*)/i, (res) ->
    boaEnter = res.match[1]
    robot.brain.set 'boa', boaEnter

    res.reply "A boa foi setada para: #{boaEnter}"

  robot.hear /qual a boa/i, (res) ->
    if robot.brain.get('boa') == null
      res.send "Tem boa não. Use: coutobot boa help"
    else
      res.send "A boa é #{robot.brain.get('boa')}"
  #END OF: QUAL A BOA

  #AUTOMATIC RESPONSES
  robot.hear /vacilao/i, (res) ->
    res.send "vasilao morre cedo"

  robot.hear /vasilao/i, (res) ->
    res.send "vacilao morre cedo"

  lulz = ['lol', 'lel', 'lel', 'kek', 'kek', 'lel', 'kek', 'LAWL']
  robot.hear /kek/i, (res) ->
    res.send res.random lulz

  robot.hear /quer tc/i, (res) ->
    res.send "tc o carai"

  robot.hear /yomama/i, (res) ->
    res.send "Ooooooh snap!"
  #END OF AUTOMATIC RESPONSES

  #DIRECT RESPONSES
  robot.respond /vamo mostrar cultura pra esse povo/i, (res) ->
    res.send "é pra mandar os falsete?"
  robot.respond /pode mandar/i, (res) ->
    res.send "aaah aaaaAAAh AAAAH AAAAAHHH"
  #END OF DIRECT RESPONDES
