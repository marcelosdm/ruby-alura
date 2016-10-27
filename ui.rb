def avisa_chute_repetido chute
	puts "Você já chutou a #{chute}."	
end

def letra_nao_encontrada
	puts "Letra não encontrada"
end

def letra_encontrada total_encontrado
	puts "Letra encontrada #{total_encontrado} vezes!"	
end

def mensagem_acertou
	puts "Parabéns! Você é fera!"
	
end

def mensagem_errou
	puts "Que pena... você errou!"	
end

def resultado_pontos pontos_ate_agora
	puts "Você ganhou #{pontos_ate_agora} pontos."	
end

def da_boas_vindas
	puts "Bem-vindo ao jogo de forca!"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n"
	puts "Vamos iniciar o jogo para você, #{nome}"
	nome
end

def pede_um_chute
	puts "Entre com a letra ou palavra"
	chute = gets.strip
	puts "Será que você acertou? Você chutou #{chute}"
	chute
end

def cabecalho_de_tentativa chutes, erros, mascara
	puts "\n\n\n"
	puts "Palavra secreta: #{mascara}"
	puts "Erros até agora: #{erros}"
	puts "Chutes até agora: #{chutes}"
end

def nao_quer_jogar?
	puts "Quer jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == 'N'
end

def sorteia_palavra_secreta
	puts "Escolhendo uma palavra secreta..."
	palavra_secreta = "programador"
	puts "Escolhida uma palavra com #{palavra_secreta.size} letras... boa sorte!"
	palavra_secreta
end


