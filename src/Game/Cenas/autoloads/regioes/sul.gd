extends Node
 
var data =  {

		"industria" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Larissa estava lendo o jornal e se deparou com a seguinte frase: \"PIB do Brasil cresce 1% no primeiro trimestre de 2022\". No entanto, Larissa, estudante do ensino médio, sem saber o significado de PIB, não conseguiu entender a notícia e pede sua ajuda. Como você explicaria para Larissa o que significa o PIB?",
			"alternativas" : [
				"Explica que o PIB é o Produto Internacional Brasileiro, isto é, o valor de todos os produtos que o Brasil produz e envia para o exterior no decorrer de um ano",
				"Explica que o PIB é o Produto Interno Bruto, isto é, a soma de todos os bens e serviços finais produzidos por um país, estado ou cidade, geralmente em um ano"
			],
			"explicacoes" : {
				"True" : "Mandou bem, Presidente! O PIB significa produto interno bruto e, por mais que possa ser calculado com base em referências distintas, representa a soma de todos os bens e serviços finais produzidos em uma determinada região e em um determinado tempo. Todos os países calculam o seu PIB nas suas respectivas moedas. O PIB do Brasil em 2021, por exemplo, foi de R$ 8,7 trilhões.",
				"False" : "Acho que você se confundiu, Presidente! O PIB significa produto interno bruto e, por mais que possa ser calculado com base em referências distintas, representa a soma de todos os bens e serviços finais produzidos em uma determinada região e em um determinado tempo. O PIB do Brasil em 2021, por exemplo, foi de R$ 8,7 trilhões."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Muito interessante entender mais sobre como funciona nossa economia!",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por esclarecer essa duvida, presidente!",
					"Rodrigo: Agora, nossa população consegue compreender mais sobre o funcionamento do Brasil",
				],
				"errou" : [
					"Rodrigo: Presidente, infelizmente essa não era a explicação correta",
				]
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false,
			"obrigatorio" :true
		},
		"mercado" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Isabel comprou uma máquina de lavar sem garantia. Após 3 meses, a máquina parou de funcionar por um problema técnico em sua função elétrica, que não era evidente no momento da compra. Agora, ela teme ter perdido esse dinheiro para sempre, restando-lhe apenas comprar uma nova máquina. Sendo Presidente, como aconselharia Isabel?",
			"alternativas" : [
				"Aconselha a pedir um empréstimo e comprar uma nova máquina de lavar. Na próxima, ela deverá contratar a garantia ao comprar o produto para não ter que contar tanto com a sorte, conforme aconselha o Código de Defesa do Consumidor.",
				"Aconselha a entrar em contato com o fornecedor do produto, em até 90 dias depois que descobriu o defeito, para que a empresa arrume o produto, porque o Código de Defesa do Consumidor protege as pessoas que compram produtos que não imaginavam ser defeituosos."
			],
			"explicacoes" : {
				"True" : "Isso mesmo, Presidente! De acordo com o Código de Defesa do Consumidor, aquele que compra produto com defeito oculto, como Isabel, ainda que sem garantia, terá até 90 dias caso o produto seja durável, como as máquinas de lavar, para solicitar que o fornecedor corrija o defeito do produto em até 30 dias, ou, não sendo possível corrigir, possa (i) substituir o produto por um novo, igual, em perfeitas condições de funcionamento, (ii) restituir o valor pago pelo consumidor ou (iii) retirar do valor pago a quantia correspondente ao defeito do produto, sendo que o consumidor deve escolher uma dessas opções",
				"False" : "Não foi dessa vez, Presidente! A alternativa está incorreta porque, de acordo com as disposições do Código de Defesa do Consumidor, aquele que compra produto com defeito oculto, como Isabel, ainda que sem garantia, terá até 90 dias caso o produto seja durável, como as máquinas de lavar, para solicitar que o fornecedor corrija o defeito do produto em até 30 dias, ou, não sendo possível corrigir, possa (i) substituir o produto por um novo, igual, em perfeitas condições de funcionamento, (ii) restituir o valor pago pelo consumidor ou (iii) retirar do valor pago a quantia correspondente ao defeito do produto, sendo que o consumidor deve escolher uma dessas opções."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Eu adoro comprar neste mercado!",
					"Rodrigo: As promoções que eles fazem são boas, mas um pouco confusas"
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por resolver nosso problema, presidente!",
					"Rodrigo: A partir de sua decisão correta, o mercado melhorou e as pessoas passaram a gostar ainda mais de comprar aqui!"
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
			"informacao" : "Matheus gostaria de matricular sua filha na escola perto de casa, na zona sul de São Paulo. Ao chegar na escola, Matheus é informado que não há vaga naquela unidade e que sua filha terá que estudar em uma creche na zona oeste de São Paulo, que fica a 2 horas de sua casa. Diante disso, como você orientaria Matheus?",
			"alternativas" : [
				"Não é possível fazer nada, porque é necessário respeitar o limite das escolas e, por isso, Matheus não poderá matricular sua filha perto de casa",
				"É direito do cidadão que tenha vaga na escola pública de educação infantil ou de ensino fundamental mais próxima de sua residência a toda criança a partir do dia em que completar 4 anos de idade. Por isso, Matheus poderá se valer de seu direito para matricular sua filha na escola mais próxima de casa, na zona sul de São Paulo"
			],
			"explicacoes" : {
				"True" : "A resposta está correta, Presidente! A Lei de Diretrizes e Bases da Educação determina que é dever do Estado garantir vaga na escola pública de educação infantil ou de ensino fundamental mais próxima da residência a toda criança a partir do dia em que completar 4 (quatro) anos de idade. Matheus, portanto, poderá matricular sua filha na escola mais próxima de casa, na zona sul de São Paulo, conforme garantido por lei. Lembrando que isso é de responsabilidade do Poder Executivo Municipal, ou seja, do Prefeito!",
				"False" : "A resposta está errada, Presidente! A Lei de Diretrizes e Bases da Educação determina que é dever do Estado garantir vaga na escola pública de educação infantil ou de ensino fundamental mais próxima da residência a toda criança a partir do dia em que completar 4 (quatro) anos de idade. Matheus, portanto, poderá matricular sua filha na escola mais próxima de casa, na zona sul de São Paulo, conforme garantido por lei"
			},
			"conversa_npc" : [
			],
			"mensagens_npc":{
				"neutro" : [
					"Thainá: Olá presidente, estamos passando por diversos problemas em nossa escola...",
					"Thainá: Gostaria de entrar para nos ajudar, certo?",
					"Thainá: Vá a porta ao meu lado."
				], 
				"acertou": [
					"Thainá: Presidente, muito obrigado pela sua orientação!",
					"Thainá: Graças a isso, nossa escola será um lugar melhor!"
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
			"informacao" : "Uma empresa A está concorrendo em uma licitação para ser escolhida como a nova responsável por realizar a coleta de lixo do município. Essa empresa pagou o servidor público responsável por coordenar a licitação para que ela ganhasse a licitação, mesmo cobrando um preço maior para realizar o serviço do que as outras empresas concorrentes. Como Presidente, o que você orientaria?",
			"alternativas" : [
				"Orienta a manter as coisas como estão desde que não se torne um escândalo e pede para que, caso alguém pergunte se você sabe a respeito, seja falado que essa história não lhe foi reportada, tendo em vista que é uma empresa muito importante para o País",
				"Orienta que o caso seja reportado ao Ministério Público para que, de acordo com o previsto na Lei de Licitações, o procedimento de licitação seja anulado e a empresa e o funcionário deverão ser responsabilizados pelas consequências que lhe cabem"
			],
			"explicacoes" : {
				"True" : "Ótima orientação, Presidente! Conforme orientou, nesse caso, é necessário que o contrato administrativo de licitação seja anulado, para que tal conduta de corrupção não seja incentivada, assim como o servidor público que aceitou suborno e permitiu a violação do caráter competitivo da licitação, que sempre deve envolver diversas empresas a serem escolhidas de acordo com os critérios estabelecidos em lei, poderá sofrer pena de reclusão de 4 anos a 8 anos, além de multa.",
				"False" : "Epa, corrupção não pode, Presidente! Nesse caso, é necessário que o contrato administrativo de licitação seja anulado, para que tal conduta de corrupção não seja incentivada, assim como o servidor público que aceitou suborno e permitiu a violação do caráter competitivo da licitação, que sempre deve envolver diversas empresas a serem escolhidas de acordo com os critérios estabelecidos em lei, poderá sofrer pena de reclusão de 4 anos a 8 anos, além de multa."
			},
			"mensagens_npc":{
				"neutro" : [
					"Frederico: Olá senhor presidente! É um prazer tê-lo aqui",
					"Isabela: O prefeito está te aguardando para uma conversa"
				], 
				"acertou": [
					"Frederico: Boa resposta Presidente, continue assim!",
				],
				"errou" : [
					"Frederico: Presidente, queremos um Brasil melhor, sem corrupção!",
					"Isabela: Voce deve dar o exemplo, Presidente!"
				]
			},
			"correta" : 1,
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
			"cena" : "res://Cenas/cena_Minigame/minigameForca.tscn",
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
		},
		"mensagem_inicial" : {
			"tipo" : Mensagens.Tipos.VCSABIA,
			"mensagens_npc" : [
				"Ana: Quando terminarmos de conversar, você poderá usar as setas do seu teclado para se movimentar pelo mapa",
				"Ana: Estamos rodeados de problemas no país. Precisamos de sua ajuda!",
				"Ana: Ao encontrar uma porta que apresenta um ponto de exclamação vermelho, o problema que nos afeta será apresentado.",
				"Ana: Fique atento às noticias do jornal e faça as escolhas que considerar ser melhor para o país.",
				"Ana: Está vendo essa barra no canto superior esquerdo da tela? Ela indica o quão bom o seu governo está",
				"Ana: Agora explore o mapa e ajude a tornar o Brasil um lugar melhor!"
			]
		}

	}
