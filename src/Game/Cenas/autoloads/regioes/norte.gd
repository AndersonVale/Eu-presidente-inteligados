extends Node
 
var data =  {

		"industria" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Sergio tem uma empresa de fornecimento de algodão e, em conjunto com as demais empresas que cuidam do mesmo tema, pretende selar um acordo para controlar o mercado do algodão, de modo que os preços sejam ajustados entre essas empresas para eliminar a concorrência. Como você aconselharia Sergio a prosseguir?",
			"alternativas" : [
				"Sergio não poderia seguir com seu plano, pois a prática narrada configura crime contra a ordem econômica, denominado formação de cartel",
				"Sergio poderia seguir com seu plano, pois a prática narrada é frequentemente utilizada para que os preços do mercado mercado sejam mais controlados, o que auxilia no desenvolvimento econômico do país"
			],
			"explicacoes" : {
				"True" : "Você está certo, Presidente! A prática de cartel é proibida no Brasil, pois se trata de situação em que há o abuso do poder econômico de um determinado grupo de empresas que, em conjunto, objetivam dominar determinado nicho de mercado, com total controle sobre os preços e as quantidades vendidas daquele produto. Por isso, não seria indicado que Sergio siga com seu plano.",
				"False" : "Poxa, Presidente, sua resposta está equivocada. A prática de cartel é proibida no Brasil, pois se trata de situação em que há o abuso do poder econômico de um determinado grupo de empresas que, em conjunto, objetivam dominar determinado nicho de mercado, com total controle sobre os preços e as quantidades vendidas daquele produto. Por isso, não seria indicado que Sergio siga com seu plano."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Tenho várias dúvidas sobre nossa economia...!",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por esclarecer essa duvida, presidente!",
					"Rodrigo: Muito importante saber sobre o abuso do poder econômico",
				],
				"errou" : [
					"Rodrigo: Presidente, infelizmente essa não era a explicação correta",
				]
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false,
			"obrigatorio" :true
		},
		"mercado" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Rodrigo comprou um pacote de pão de forma e, ao chegar em casa, percebeu que ele estava com mofo. No entanto, considerando que o Rodrigo já saiu da loja e não tinha visto esse defeito, ele questiona a você, Presidente, se ainda pode reclamar a respeito disso ao fornecedor do produto?",
			"alternativas" : [
				"Não, ele deveria ter visto o defeito na loja, pois, como diz o ditado popular, “camarão que dorme, a onda leva” e o Rodrigo não se atentou quando deveria ter percebido o mofo no pão",
				"Sim, Rodrigo tem o direito de reclamar pelos defeitos aparentes ou de fácil constatação em até 30 dias se o produto não for durável, como alimentos e medicamentos, conforme determinado pelo Código de Defesa do Consumidor"
			],
			"explicacoes" : {
				"True" : "Mandou bem, Presidente! Assim como você indicou, o Código de Defesa do Consumidor prevê que o consumidor tem o direito de reclamar sobre vícios de produtos aparentes ou de fácil constatação em até 30 dias se forem bens não duráveis, como são os alimentos e medicamentos, e em até 90 dias se forem bens duráveis, como eletrodomésticos, móveis, automóveis",
				"False" : "Quase, Presidente! Na verdade, o Código de Defesa do Consumidor prevê que o consumidor tem sim o direito de reclamar sobre vícios de produtos aparentes ou de fácil constatação em até 30 dias se forem bens não duráveis, como são os alimentos e medicamentos, e em até 90 dias se forem bens duráveis, como eletrodomésticos, móveis, automóveis."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Eu nunca sei o que fazer quando compro um produto estragado...",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por resolver nosso problema, presidente!",
					"Rodrigo: A partir de sua decisão correta, os consumidores estão mais contentes!"
				],
				"errou" : [
					"Rodrigo: Presidente, infelizmente o problema não foi solucionado corretamente",
					"Rodrigo: Presidente, isso fez com que os consumidores diminuíssem..."
				]
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false,
			"obrigatorio" :true
		},
		"escola" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Josias, um candidato a vereador local que integra o seu partido, foi um dos vereadores menos votados na última eleição (teve apenas 150 votos), mas foi o segundo mais votado do seu partido, logo atrás de um cantor sertanejo super popular (que foi o candidato mais votado com milhões de votos) e então foi eleito. Outros candidatos tiveram mais votos que ele, mas não foram eleitos. A população local está um pouco confusa e aproveita a sua visita para perguntar se isso está certo. Como você explicaria?",
			"alternativas" : [
				"Isso deve ser fraude eleitoral! Vamos fazer uma manifestação para que seja feita uma nova apuração!",
				"Isso está correto, o que aconteceu foi devido ao Quociente Eleitoral, pois temos um sistema proporcional de votação"
			],
			"explicacoes" : {
				"True" : "Presidente, você está certíssimo! Os vereadores são eleitos pelo sistema proporcional com lista aberta. Nesse sistema, a votação de cada candidato é influenciada pela soma de votos de todos os candidatos do mesmo partido e ainda pelos os votos de legenda (aquele em que o eleitor digita na urna apenas os dois números que identificam o partido, não manifestando vontade por um candidato específico). Basicamente, os votos que “sobram” dos candidatos mais votados ajudam a eleger outros do mesmo partido. E os ocupantes das cadeiras conquistadas por cada partido serão os candidatos mais votados de cada partido",
				"False" : "Presidente, a resposta está equivocada. Os vereadores são eleitos pelo sistema proporcional com lista aberta. Nesse sistema, a votação de cada candidato é influenciada pela soma de votos de todos os candidatos do mesmo partido e ainda pelos os votos de legenda (aquele em que o eleitor digita na urna apenas os dois números que identificam o partido, não manifestando vontade por um candidato específico). Basicamente, os votos que “sobram” dos candidatos mais votados ajudam a eleger outros do mesmo partido. E os ocupantes das cadeiras conquistadas por cada partido serão os candidatos mais votados de cada partido"
			},
			"conversa_npc" : [
			],
			"mensagens_npc":{
				"neutro" : [
					"Thainá: Olá presidente, nossos alunos estão discutindo como funciona a eleição para vereador",
					"Thainá: Gostaria de entrar para nos ajudar, certo?",
					"Thainá: Vá a porta ao meu lado."
				], 
				"acertou": [
					"Thainá: Presidente, muito obrigado pela sua orientação!",
					"Thainá: Imagina que interessante se eles aprendessem isso na escola?"
				],
				"errou" : [
					"Thainá: Presidente, acho que vale a pena conversar com o Prefeito sobre isso!"
				]
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 0,
			"valorErro" : -1,
			"respondido" : false,
			"obrigatorio" :true,
		},
		"prefeitura" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Gertrudes, mulher do prefeito, estava dirigindo em uma estrada no período da manhã e, ao ouvir um pedido de socorro na estrada, não parou para pedir socorro de autoridade pública ou prestar assistência à pessoa que estava ferida. Essa situação seria narrada no jornal e, como Presidente, pediram para que você os ensinasse se existiria qualquer consequência legal nesse caso. Nessa posição, você:",
			"alternativas" : [
				"Informa que a conduta de Gertrudes configura crime de omissão de socorro e pode resultar em detenção, previsto pelo Código Penal, motivo pelo qual Gertrudes poderá ser criminalmente responsabilizada, após passar pela devida investigação e processo penal",
				"Orienta que não há nada demais, já que não foi Gertrudes a responsável por ferir a pessoa que pediu ajuda na estrada, de sorte que não seria sua obrigação parar para ajudá-la"
			],
			"explicacoes" : {
				"True" : "Resposta certa, Presidente! O Código Penal é expresso ao determinar que deixar de prestar assistência, quando possível fazê-lo sem risco pessoal, à criança abandonada ou extraviada, ou à pessoa inválida ou ferida, ao desamparo ou em grave e iminente perigo; ou não pedir, nesses casos, o socorro da autoridade pública, resulta em pena de detenção ou multa, de modo que Gertrudes poderá responder criminalmente, caso condenada.",
				"False" : "Resposta errada, Presidente! Embora sua resposta tenha certa lógica, o Código Penal é expresso ao determinar que deixar de prestar assistência, quando possível fazê-lo sem risco pessoal, à criança abandonada ou extraviada, ou à pessoa inválida ou ferida, ao desamparo ou em grave e iminente perigo; ou não pedir, nesses casos, o socorro da autoridade pública, resulta em pena de detenção ou multa, de modo que Gertrudes poderá responder criminalmente, caso condenada"
			},
			"mensagens_npc":{
				"neutro" : [
					"Frederico: Olá senhor presidente! É um prazer tê-lo aqui",
					"Isabela: O prefeito está com uma dúvida, consegue nos ajudar?"
				], 
				"acertou": [
					"Frederico: Boa resposta Presidente, continue assim!",
				],
				"errou" : [
					"Frederico: Presidente, a população precisa aprender sobre nossas leis!",
					"Isabela: Voce deve dar o exemplo, Presidente!"
				]
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -1,
			"respondido" : false,
			"obrigatorio" :true
		},
		"minigame1" : {
			"tipo" : Mensagens.Tipos.MINIGAME,
			"acertou" : false,
			"pontos" : 0,
			"respondido" : false,
			"obrigatorio" : false,
			"cena" : "res://Cenas/cena_Minigame/miniGameMemoria.tscn",
			"mensagens_npc":{
				"neutro" : [
					"Pablo: Oi! está perdendo muitos pontos durante as problemáticas?",
					"Pablo: Caso deseje tentar recuperar seus pontos, entre na porta ao lado e jogue o minigame!"
				], 
				"acertou": [
					"Pablo: Não posso acreditar! Você venceu mesmo o minigame!",
					"Pablo: Parabéns! Estou sem palavras! Poucos dos que tentaram conseguiram vencer esse desafio!"
				],
				"errou" : [
					"Pablo: Você quase conseguiu, presidente! Continue tentando!",
					"Pablo: Tenho certeza que você vencerá em uma outra tentativa!"
				]
			}
		},
		"configuracao" : {
			"tipo" : Mensagens.Tipos.CONFIGURACAO,
			"cena" : "res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn"
		}

	}
