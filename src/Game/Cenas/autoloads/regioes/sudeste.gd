extends Node
 
var data =  {

		"industria" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Telma tem uma empresa de perfumes desde 2010. No entanto, devido à pandemia, os lucros caíram e a empresa estava passando por muitas dificuldades financeiras. Buscando a recuperação da empresa, Telma gostaria de ingressar negociando com apenas alguns dos seus fornecedores, sem se socorrer do Poder Judiciário. Como Presidente, o que você sugeriria para Telma?",
			"alternativas" : [
				"Avisaria que não há jeito de resolver a crise da empresa fora do campo judicial, porque apenas o juízo saberia dizer qual pessoa (credor) deverá ser pago primeiro, seguindo o determinado na Lei de Recuperação Judicial e Falências.",
				"Avisaria que há jeito de negociar as dívidas específicas com as empresas credoras que ela desejar, caso elas assinem o plano de recuperação extrajudicial que será elaborado pela empresa da Telma, apenas em relação aos credores que ela tiver vontade, para que as dívidas tidas em relação a essas empresas sejam pagas e encerradas."
			],
			"explicacoes" : {
				"True" : "Acertou, Presidente! A lei que regula a recuperação judicial, a extrajudicial e a falência do empresário e da sociedade empresária. Nesse contexto, o legislador fez a previsão de que as dívidas poderiam ser negociadas extrajudicialmente, ou seja, independentemente de processo judicial, por intermédio da proposta de plano de recuperação da empresa devedora, na qual prevê novas formas de pagamento aos credores selecionados, para que possa ter condições melhores para pagar suas dívidas sem falir, desde que os credores envolvidos aceitem a proposta.",
				"False" : "Quase lá, Presidente! Na verdade, existe uma lei que regula a recuperação judicial, a extrajudicial e a falência do empresário e da sociedade empresária. Nesse contexto, o legislador fez a previsão de que as dívidas poderiam ser negociadas extrajudicialmente, ou seja, independentemente de processo judicial, por intermédio da proposta de plano de recuperação da empresa devedora, na qual prevê novas formas de pagamento aos credores selecionados, para que possa ter condições melhores para pagar suas dívidas sem falir, desde que os credores envolvidos aceitem a proposta."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Sempre é importante entender como um comerciante pode negociar suas dívidas!",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por esclarecer essa duvida, presidente!",
					"Rodrigo: Agora, nossos comerciantes se sentem mais confiantes em momentos de crise",
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
			"informacao" : "Joana vai até o Pet Shop que havia informado, por um panfleto, que faria uma grande promoção durante o mês de julho, para comprar um arranhador de gatos que estava com desconto de 50%. No entanto, ao chegar lá, os vendedores informam que a promoção foi cancelada, embora eles não tenham informado ao público, e que o arranhador custa R$ 180,00, caso Joana queira levar. Diante disso, o que você falaria para Joana?",
			"alternativas" : [
				"Avisa que o Pet Shop tem direito de cancelar a promoção, pois os proprietários do estabelecimento tem controle sobre os valores dos produtos, com base nas diretrizes do Código de Defesa do Consumidor.",
				"Avisa que o Pet Shop não poderia ter retirado a oferta sem comunicar o público anteriormente, de modo que a oferta indicada no panfleto ainda estaria válida e, com isso, eles serão obrigados a cumprir exatamente o que foi indicado no folheto até alterarem e divulgarem que a promoção já não existe."
			],
			"explicacoes" : {
				"True" : "Acertou, Presidente! Assim como aconselhou, o Código de Defesa do Consumidor determina que toda informação ou publicidade sobre produtos ou serviços oferecidos, como a do folheto, divulgada por qualquer forma ou meio de comunicação, obriga o fornecedor daquele produto ou serviço a cumprir o que estiver descrito nela. Ou seja, o Pet Shop, ao falar que faria uma promoção envolvendo determinados produtos, fica obrigado a fazê-la ou, com antecedência, divulgar que a promoção não acontecerá mais. Com seu conselho, Joana voltou na loja no mesmo dia em que falou com você, com o folheto em que constava a promoção e o Código de Defesa do Consumidor, e fez com que o Pet Shop cumprisse a promoção que tinham feito, vendendo o arranhador de gatos que ela tanto queria com o desconto informado",
				"False" : "Não foi dessa vez, Presidente! O fornecedor de produtos e serviços também tem que respeitar o disposto na legislação. Isso porque o Código de Defesa do Consumidor determina que toda informação ou publicidade sobre produtos ou serviços oferecidos, como a do folheto, divulgada por qualquer forma ou meio de comunicação, obriga o fornecedor daquele produto ou serviço a cumprir o que estiver descrito nela. Ou seja, o Pet Shop, ao falar que faria uma promoção envolvendo determinados produtos, fica obrigado a fazê-la ou, com antecedência, divulgar que a promoção não acontecerá mais. Nesse caso, Joana tinha direito a comprar o arranhador de gatos com o desconto informado no folheto."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Sempre tenho dúvidas com relação aos meus direitos como consumidor!",
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
			"informacao" : "João Marcelo tem um filho de 10 anos e não encontra vaga em qualquer escola para matricular seu filho. Buscando seus direitos, João Marcelo questiona se precisará matricular seu filho em uma escola particular para que ele possa estudar. Nessa situação, você, como Presidente, orienta:",
			"alternativas" : [
				"Que ele comece a juntar o dinheiro para matricular seu filho na escola particular, ou que faça um empréstimo, porque não tem como o Estado criar novas vagas",
				"Que ele processe o Estado para reivindicar seu direito, uma vez que é previsto constitucionalmente o dever de o Estado garantir educação básica obrigatória e gratuita para as crianças de 10 anos"
			],
			"explicacoes" : {
				"True" : "Acertou, Presidente! A Constituição Federal prevê que é dever do Estado garantir a educação básica obrigatória e gratuita dos 4 aos 17 anos de idade, incluindo, assim, o filho de João Marcelo, que tem 10 anos",
				"False" : "Não foi dessa vez, Presidente! A Constituição Federal prevê que é dever do Estado garantir a educação básica obrigatória e gratuita dos 4 aos 17 anos de idade, incluindo, assim, o filho de João Marcelo, que tem 10 anos"
			},
			"conversa_npc" : [
			],
			"mensagens_npc":{
				"neutro" : [
					"Thainá: Olá presidente, aqui também temos diversos problemas em nossa escola...",
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
			"informacao" : "Sofia e Felipe coordenam o jogo do bicho e gostariam que essa atividade fosse  legalizada no Brasil. Para tanto, contratam os serviços de Rafael para que ele vá até o Congresso Nacional e, por meio do pagamento de alguns membros do Poder Legislativo, responsáveis por representar a população na elaboração de novas leis, façam com que seja discutido um projeto de lei (PL) para legalização do jogo do bicho. Na condição de Presidente, você sugere:",
			"alternativas" : [
				"Que o ato praticado por Sofia, Felipe e Rafael configura ato de corrupção ativa, que consiste no ato de oferecer ou prometer vantagem indevida a funcionário público, para determiná-lo a praticar, omitir ou retardar ato, enquanto a conduta dos congressistas que aceitaram o dinheiro seria classificada como corrupção passiva",
				"Que não há nada de ilegal em tal conduta, já que a discussão do projeto de lei não é garantia de que o projeto de lei se tornará lei e efetivamente tornará o jogo do bicho uma atividade legalizada. Por isso, não há qualquer crime para responsabilizar os envolvidos"
			],
			"explicacoes" : {
				"True" : "Boa resposta, Presidente! A conduta dos congressistas que aceitaram suborno, assim como a conduta da Sofia, Felipe e Rafael que participaram do suborno, devem ser classificadas como crimes de corrupção passiva e ativa, respectivamente, previstos pelo Código Penal e passíveis de condenação por reclusão de 2 a 12 anos, bem como multa.",
				"False" : "Não foi dessa vez, Presidente! A conduta dos congressistas que aceitaram suborno, assim como a conduta da Sofia, Felipe e Rafael que participaram do suborno, devem ser classificadas como crimes de corrupção passiva e ativa, respectivamente, previstos pelo Código Penal e passíveis de condenação por reclusão de 2 a 12 anos, bem como multa."
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
		},
		"mensagem_inicial" : {
			"tipo" : Mensagens.Tipos.VCSABIA,
			"mensagens_npc" : [
				"Olá Presidente! Bem vindo à região Sudeste!",
				"Espero que essa viagem lhe seja muito proveitosa!"
			]
		}

	}
