def da_boas_vindas
	puts "Bem-vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets.strip

	puts "\n\n\n\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
	puts "Escolhendo um número secreto entre 0 e 200..."
	sorteado = 175
	puts "Escolhido... que tal adivinhar nosso número secreto de hoje?"
	sorteado
end

def pede_um_numero chutes, tentativa, limite_tentativas
	puts "\n\n\n\n"
	puts "Tentativa #{tentativa} de #{limite_tentativas}"
	puts "Seus chutes foram: #{chutes}"
	chute = gets.strip
	puts "Entre com o seu número:"
	puts "Será que você acertou? Você chutou #{chute}"
	chute.to_i
end

def verifica_se_acertou numero_secreto, chute
	acertou = numero_secreto == chute
	if acertou
		puts "Acertou!"
		return true
	end
	maior = numero_secreto > chute
	if maior
		puts "Errou! O número secreto é maior!"

	else
		puts "Errou! O número secreto é menor!"

	end
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto


limite_tentativas = 3
chutes = []

for tentativa in 1..limite_tentativas
	chute = pede_um_numero chutes, tentativa, limite_tentativas
	chutes << chute
	if verifica_se_acertou numero_secreto, chute
		break
end

end