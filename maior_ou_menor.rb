puts "Bem-vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets

puts "\n\n\n\n\n\n"
puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar nosso número secreto de hoje?"

limite_tentativas = 3
for tentativa in 1..limite_tentativas
	puts "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_tentativas.to_s + " Entre com o seu número:"
	chute = gets
	puts "Será que você acertou? Você chutou " + chute

	acertou = numero_secreto == chute.to_i

	if acertou
		puts "Acertou!"
		break
	else
		if numero_secreto > chute.to_i
			puts "Errou! O número secreto é maior que seu chute!"
		else
			puts "Errou! O número secreto é menor que seu chute!"
		end
	end
end

