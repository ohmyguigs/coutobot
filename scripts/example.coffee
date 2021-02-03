#   These are from the scripting documentation:
#   https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  # DEBUG
  # robot.respond /(.+)/i, (res) ->
  #   console.log res.message
  #   console.log res.envelope

  # AUTOMATIC RESPONSES
  robot.hear /vacilao/i, (res) ->
    res.send "vasilao morre cedo"

  robot.hear /vasilao/i, (res) ->
    res.send "vacilao morre cedo"

  lulz = ['lol', 'lel', 'lel', 'kek', 'kek', 'lel', 'kek', 'LAWL']
  robot.hear /kek/i, (res) ->
    res.send res.random lulz

  robot.hear /edson/i, (res) ->
    res.send "sibelius?"

  sibs = [
    'sibeck',
    'sipinélius',
    'sibnélios',
    'sipélis',
    'sibolino',
    'sebólius',
    'silésbico',
    'silésbios',
    'sineblius',
    'paula?',
    'sibeli',
    'meu amado',
    'sinéblios',
    'sisi',
    'sibelitos',
    'silibius',
    'sinéblios',
    'sibelinho lindo',
    'sibelindo',
    'sibelícia',
    'sexybélius',
    'siba',
    'siborn to be wild',
    'siborg',
    'sibinho',
    'silibidos',
    'sinésio',
    'silibelius',
    'Edson?'
  ]
  robot.hear /sibelius/i, (res) ->
    res.send res.random sibs

  duds = [
    'linda',
    'duds',
    'fuda',
    'duvda',
    'buda',
    'um anju',
    'duda rainha, resto nadinha',
  ]
  robot.hear /duda/i, (res) ->
    res.send res.random duds

  robot.hear /quer tc/i, (res) ->
    res.send "tc o carai"

  timbus = [
    'CAACAgEAAxkBAAEBz8lgDi2vnYj0zdVUj0NKaS9vuH99YwACzQEAAlRD1AaJDFD4pKsCvB4E',
    'CAACAgEAAxkBAAEBz8tgDi4TpgmDER7QIYRaoKdD0N_sPQACCgADUimIOFtxb1-RzG2QHgQ',
    'CAACAgEAAxkBAAEBz81gDi4mgYVYp6wkVejpqz-jqL-C7AACBgADUimIOM_RTP5jgl3oHgQ',
    'CAACAgEAAxkBAAEBz89gDi4uwd9_QJWMFN_fvDXt-p6IzwACCAADUimIOF0ctd9hlYqYHgQ',
    'CAACAgEAAxkBAAEBz9FgDi5bCx1LeHpSF6CwcBpFUfNnXAAC3wEAAlRD1AYUdPEH2OHYrx4E',
  ]
  robot.hear /manda um (timbú|gambá|timbu|gamba|sarui|saruí)/g, (res) ->
    robot.emit 'telegram:invoke',
    'sendSticker',
    { chat_id: res.envelope.room, sticker: res.random timbus },
    (error, response) ->
      console.log error
      console.log response
      
  poses = [
    'CAACAgEAAxkBAAEB1tFgGqaPHol8zytD53sNr5d88CiS1AACHAADhfshGyuC_z68OoyeHgQ',
    'CAACAgEAAxkBAAEB1tNgGqamL8_0oEFQPYXVlroyOEh2bAACFQADhfshG6sWZBSTGousHgQ',
    'CAACAgEAAxkBAAEB1tVgGqaomgZirkGnKa5lOXxC-BpIxQACFgADhfshG-Q_wUaY9mlIHgQ',
    'CAACAgQAAxkBAAEB1t1gGqcDx4kB_mSpwBExF_e7s_OzwQAC2gAD-7JCAvpTlt6vVWB8HgQ',
    'CAACAgQAAxkBAAEB1tdgGqbgCdJtQ1eqxH5Y3qc-wjmLAQACJAAD-7JCAu5QYjyPRmx9HgQ',
    'CAACAgQAAxkBAAEB1tlgGqbk_7156wKe6ewbGXcmdh3qeQACDQAD-7JCAlTfJ-IrQokEHgQ',
    'CAACAgQAAxkBAAEB1ttgGqb5_pG5Gh4jfS87nlA1YGtGsAACiAAD-7JCAgIqRJojVfk8HgQ',
  ]
  robot.hear /(jojo|pose|dio|za warudo|the world)/g, (res) ->
    robot.emit 'telegram:invoke',
    'sendSticker',
    { chat_id: res.envelope.room, sticker: res.random poses },
    (error, response) ->
      console.log error
      console.log response
  #END OF AUTOMATIC RESPONSES

  #DIRECT RESPONSES
  robot.respond /vamo mostrar cultura pra esse povo/i, (res) ->
    res.send "é pra mandar os falsete?"
  robot.respond /pode mandar/i, (res) ->
    res.send "aaah aaaaAAAh AAAAH AAAAAHHH"
  #END OF DIRECT RESPONDES
