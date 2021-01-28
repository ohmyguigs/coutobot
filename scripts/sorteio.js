module.exports = robot => {
  robot.respond(/vamos fazer um sorteio/i, (res) => {
    res.send("Use o comando: coutobot bota <alguma coisa>\npara adicionar <alguma coisa> a lista")
  })

  robot.respond(/bota (.*)/i, (res) => {
    algumaCoisa = res.match[1]
    lista = robot.brain.get('sorteio') || []
    robot.brain.set('sorteio', [...lista, algumaCoisa])

    res.reply("Adicionei: #{algumaCoisa} na lista do sorteio")
  })

  robot.hear(/como ta o sorteio/i, (res) => {
    if (robot.brain.get('sorteio') == null) {
      res.send("Não lembro de nenhum sorteio.\nUse: coutobot vamos fazer um sorteio")
    } else {
      msg = ""
      robot.brain.get('sorteio').forEach((item, index) => {
        msg += "#{index+1}. #{item}\n"
      })
      res.send("A lista ta assim:\n #{msg}")
    }
  })
}
