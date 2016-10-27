require_relative 'ui'

def palavra_mascarada chutes, palavra_secreta
	mascara = ""
	for letra in palavra_secreta.chars
		if chutes.include? letra
			mascara += letra
		else
			mascara += ' - '
		end
	end
	mascara	
end

def pede_um_chute_valido chutes, erros, mascara
	cabecalho_de_tentativa chutes, erros, mascara
	loop do
		chute = pede_um_chute
		if chutes.include? chute
			avisa_chute_repetido chute
		else
			return chute
		end
	end
end

def joga(nome)
	palavra_secreta = sorteia_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agora = 0

	while erros < 5
		mascara = palavra_mascarada chutes, palavra_secreta
		chute = pede_um_chute_valido chutes, erros, mascara
		chutes << chute
		chutou_uma_unica_letra = chute.size == 1
		if chutou_uma_unica_letra
			total_encontrado = palavra_secreta.count(chute[0])
			if total_encontrado == 0
				letra_nao_encontrada
				erros += 1
			else
				letra_encontrada total_encontrado
			end
		else
			acertou = chute == palavra_secreta
			if acertou
				mensagem_acertou
				pontos_ate_agora += 100
				break
			else
				mensagem_errou
				pontos_ate_agora -= 30
				erros += 1
			end
		end
	end


	resultado_pontos pontos_ate_agora
end


def jogo_da_forca
	nome = da_boas_vindas

	loop do
		joga nome
		break if nao_quer_jogar?	
	end
end