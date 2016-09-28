puts "Bem-vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\n"
puts "Começaremos o jogo para você, " + nome
puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar nosso número secreto de hoje?"
puts "\n\n\n\n"
puts "Tentativa 1: entre com o seu número!"
chute = gets
puts "Será que você acertou? Você chutou " + chute
puts chute.to_i == numero_secreto