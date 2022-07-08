extends Node
 
var data =  {
		"prefeitura" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Bruna é repórter no jornal e faz exatamente o mesmo trabalho do que Carlos, mas recebe cerca de 20% a menos do que ele, apesar de ter as mesmas qualificações acadêmicas e experiência profissional prévia. Nessas circunstâncias, ela aproveita sua visita para questionar o que pode fazer nessa situação. Ao ser questionado, você responde:",
			"alternativas" : [
				"Bruna tem o direito constitucionalmente garantido de ser tratada em condição de igualdade em relação a todas as pessoas com quem trabalha, de modo que ela ganhar 20% a menos de salário do Carlos, para exercer a mesma função, é inadmissível perante a lei brasileira",
				"Bruna deve ganhar menos , afinal, ela tem a possibilidade de ficar grávida e, com isso, ficar afastada do trabalho durante alguns meses. Por isso, o salário menor seria para compensar o tempo afastada"
			],
			"explicacoes" : {
				"True" : "Você está correto, Presidente! Não há qualquer justificativa plausível para suportar a ideia de desigualdade salarial entre homens e mulheres, uma vez que a Constituição Federal é expressa ao estabelecer que todos são iguais perante a lei, inclusive diante da CLT, devendo ser garantida a igualdade.",
				"False" : "A resposta está errada, Presidente! Não há qualquer justificativa plausível para suportar a ideia de desigualdade salarial entre homens e mulheres, uma vez que a Constituição Federal é expressa ao estabelecer que todos são iguais perante a lei, inclusive diante da CLT, devendo ser garantida a igualdade."
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
					"Frederico: Presidente, queremos um Brasil melhor, temos que respeitar nossa Constituição Federal!",
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
		"mercado" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Marcelo vai ao mercado e, ao comprar um iogurte que sempre costuma comprar, é informado que terá que levar obrigatoriamente outro produto junto, um açaí, pagando pelo preço dos dois. Indignado com essa situação, Marcelo aproveita que vê você, Presidente, entrando no mercado e pergunta se é mesmo obrigado a levar o segundo produto, uma vez que sequer gosta de açaí. Como Presidente, você responde",
			"alternativas" : [
				"Que Marcelo poderá questionar a conduta do mercado e levar apenas um produto, já que o Código de Defesa do Consumidor veda a denominada “venda casada'', ou seja, que o fornecedor obrigue o consumidor a consumir produtos ou serviços alheios ao que ele deseja apenas para que o consumidor compre os dois.",
				"Que não tem jeito, Marcelo terá que levar o açaí se quiser tomar iogurte, já que foi uma regra imposta pelo fornecedor."
			],
			"explicacoes" : {
				"True" : "Na mosca, Presidente! Marcelo poderá se socorrer no Código de Defesa do Consumidor, que proíbe aos fornecedores condicionar o fornecimento de produto ou serviço ao fornecimento ou consumo de outro bem ou serviço. Dessa forma, seria vedado, por lei, que o mercado fornecedor obrigasse Marcelo a comprar o açaí, como condição necessária para a compra do iogurte",
				"False" : "Poxa, Presidente, mas tem jeito sim! Marcelo poderá se socorrer do Código de Defesa do Consumidor, que proíbe aos fornecedores condicionar o fornecimento de produto ou serviço ao fornecimento ou consumo de outro bem ou serviço. Dessa forma, seria vedado, por lei, que o mercado obrigasse Marcelo a comprar o açaí, como condição necessária para a compra do iogurte."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: To fazendo conta pra ver se consigo comprar chocolate!",
					"Rodrigo: Algumas regras de compra são muito complexas!"
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por resolver nosso problema, presidente!",
					"Rodrigo: Eu nunca soube o que significava a palavra venda casada!"
				],
				"errou" : [
					"Rodrigo: Presidente, infelizmente o problema não foi solucionado corretamente",
					"Rodrigo: Acho interessante voce ler o Código de Defesa do Consumidor"
				]
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false,
			"obrigatorio" :true
		},
		"industria" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Carolina não trabalha, mas gostaria de contribuir para a Previdência Social para que o tempo mínimo para que possa se aposentar comece a contar. No entanto, Carolina não sabe se pode contribuir voluntariamente para a Previdência sem trabalhar. Ao te ver entrando, ela pergunta se poderia prosseguir com seu plano de antecipar os pagamentos que os anos antes de ter um trabalho formal sejam contados. Nessa situação, na condição de Presidente, você responde",
			"alternativas" : [
				"Que não seria possível, pois apenas os trabalhadores com carteira assinada podem contribuir para a Previdência Social e, após cumpridos todos os requisitos, se aposentar",
				"Que seria possível, pois, desde que você não trabalhe, poderá contribuir facultativamente (ou seja, de forma voluntária) para a Previdência Social, desde que se inscreva e pague as contribuições mensalmente"
			],
			"explicacoes" : {
				"True" : "Ótima resposta, Presidente! Isso porque, a Previdência Social, regime utilizado para tratar da aposentadoria dos cidadãos brasileiros, também permite que todos aqueles que tenham mais de 14 anos de idade e não se encaixam nas categorias de segurados obrigatórias, as quais estão elencadas na Lei que dispõe sobre os “Planos de Benefícios da Previdência Social”, possam contribuir para a previdência social mensalmente de modo facultativo, ou seja, voluntário, e, com isso, aposentar-se futuramente.",
				"False" : "Quase lá, Presidente! Na verdade, a Previdência Social, regime utilizado para tratar da aposentadoria dos cidadãos brasileiros, também permite que todos aqueles que tenham mais de 14 anos de idade e não se encaixam nas categorias de segurados obrigatórias, as quais estão elencadas na Lei que dispõe sobre os “Planos de Benefícios da Previdência Social”, possam contribuir para a previdência social mensalmente de modo facultativo, ou seja, voluntário, e, com isso, aposentar-se futuramente."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Sempre tive muitas dúvidas sobre aposentadoria e contribuição social...",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por esclarecer essa duvida, presidente!",
					"Rodrigo: Agora, nossa população consegue compreender mais sobre o funcionamento do Brasil",
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
		"escola" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Victor, sempre muito esperto, dizia que se o professor atrasasse mais de 15 minutos para chegar na sala de aula, os alunos poderiam ir embora da classe sem terem a falta contabilizada. Rogéria, ao te ver entrando na escola, aproveita que você é Presidente para tirar essa dúvida sobre a tolerância de 15 minutos. Diante de tal questionamento, como você responde?",
			"alternativas" : [
				"Explica que há mesmo tolerância de 15 minutos, estabelecida por lei, para que os alunos possam se levantar e ir embora caso o professor não apareça nesse intervalo de tempo",
				"Explica que isso é mito, e que não existe base legal para que os alunos abandonem a sala de aula após 15 minutos de atraso do professor"
			],
			"explicacoes" : {
				"True" : "Acertou, Presidente! Na atual legislação, não há nenhuma previsão legal que seja válida para permitir que os alunos abandonem a sala de aula após qualquer tempo de atraso pelo professor",
				"False" : "Poxa, Presidente, você também caiu nessa lenda urbana! Na verdade, não há qualquer previsão estabelecida por lei que seja válida para permitir que os alunos abandonem a sala de aula após qualquer tempo de atraso pelo professor"
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
					"Thainá: Agora nossos estudantes estarão atentos ao horário!"
				],
				"errou" : [
					"Thainá: Presidente, acho que vale a pena estudar um pouco mais sobre isso!"
				]
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 0,
			"valorErro" : -1,
			"respondido" : false,
			"obrigatorio" :true,
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
