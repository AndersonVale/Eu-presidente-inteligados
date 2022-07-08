extends Node
 
var data =  {

		
		"mercado" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Gilson está devendo a sua operadora de celular porque, por complicações financeiras, não conseguiu pagar a última fatura. Ele recebe, com frequência, ligações de cobrança da operadora, que ameaça cortar o serviço de telefone e internet caso não efetue o pagamento nos próximos dias. Além de cobrar incessantemente o próprio Gilson, a operadora passou a ligar para seus familiares para expor a condição de devedor do Gilson. Diante disso, Gilson, constrangido pela conduta da operadora e por ter sua condição de devedor exposta a seus familiares, pergunta a você, Presidente, se tem algo que ele possa fazer para que a operadora pare de ligar para a família dele. Nessa situação, o que aconselha?",
			"alternativas" : [
				"Informa que, caso deseje, Gilson poderá ajuizar um processo contra a operadora para obrigá-la a parar de ligar para os familiares dele, assim como se compromete a não cometer qualquer ato que vá expor Gilson ao ridículo, nem o submeta a constrangimento ou a ameaça.",
				"Informa que não há nada que possa ser feito além de lidar com as ligações da operadora e tentar pagar a dívida, pois a operadora tem total direito de utilizar de todos os meios possíveis para obrigar Gilson a pagar o valor devido, inclusive envolver seus familiares."
			],
			"explicacoes" : {
				"True" : "Ótimo conselho, Presidente! Nesse caso, Gilson tem o direito de exigir que, na cobrança de seus débitos, não seja exposto ao ridículo, nem submetido a qualquer tipo de constrangimento ou ameaça, conforme determina o Código de Defesa do Consumidor. Por isso, Gilson poderá alertar a operadora que o fato de ela ligar para seus familiares é motivo de grande constrangimento e, caso as ligações não cessem, poderá processar a operadora para obrigá-la a encerrar as ligações e qualquer outro tipo de constrangimento, sob pena de descumprir a determinação judicial e arcar até mesmo com multa por causa disso",
				"False" : "Foi por pouco, Presidente! Na verdade, nesse caso, Gilson tem o direito de exigir que, na cobrança de seus débitos, ele não seja exposto ao ridículo, nem submetido a qualquer tipo de constrangimento ou ameaça, conforme determina o Código de Defesa do Consumidor. Por isso, Gilson poderá alertar a operadora que o fato de ela ligar para seus familiares é motivo de grande constrangimento e, caso as ligações não cessem, poderá processar a operadora para obrigá-la a encerrar as ligações e qualquer outro tipo de constrangimento, sob pena de descumprir a determinação judicial e arcar até mesmo com detenção de três meses a um ano e multa por causa disso."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Não aguento mais receber ligações de números desconhecidos...!",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por resolver nosso problema, presidente!",
					"Rodrigo: Agora os consumidores sabem o que fazer!"
				],
				"errou" : [
					"Rodrigo: Presidente, infelizmente o problema não foi solucionado corretamente",
					"Rodrigo: Os consumidores precisam aprender dos seus direitos..."
				]
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false,
			"obrigatorio" :true
		},"industria" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Isabel estava indo de carro para o trabalho e, ao se distrair, não reparou em um grande buraco no meio da via. Ao passar pelo buraco, seu pneu furou e, por isso, se atrasou para uma reunião importante do trabalho. Indignada com a condição de pavimentação da rua, Isabel questiona a você, Presidente, quem poderá se responsabilizar pelo ocorrido. Nessa situação, você responde",
			"alternativas" : [
				"Isabel deverá entrar em contato com a União para requerer a correção da pavimentação da via pública que está com o buraco e furou seu pneu. No entanto, Isabel não poderá processar qualquer ente do Estado, pois é obrigação dela andar com mais atenção na rua, evitando esse tipo de problema no caminho",
				"Que Isabel pode entrar em contato com a prefeitura municipal para requerer a correção da pavimentação da via pública que está com o buraco e furou seu pneu. Além disso, poderá processar a prefeitura municipal para responder pelos danos causados no carro pela má pavimentação das ruas, conforme evidenciado pelo buraco que furou seu pneu"
			],
			"explicacoes" : {
				"True" : "Resposta certa, Presidente! Isabel poderá entrar em contato com a prefeitura municipal para correção da pavimentação da rua, uma vez que, de acordo com a Constituição Federal, é dever da prefeitura municipal prover uma pavimentação de qualidade para as vias urbanas, realizar a manutenção delas, fazer a drenagem para a água da chuva e a sinalização das ruas. Caso a prefeitura municipal não cumpra com seu dever, Isabel poderá requerer, perante o Poder Judiciário, que ela seja obrigada a corrigir a via e arque com os danos ocorridos no carro dela.",
				"False" : "Resposta errada, Presidente! Na verdade, o ente responsável pela pavimentação da via pública são as prefeituras municipais, e não a União, conforme determinado pela Constituição Federal. Além disso, caso a prefeitura municipal não cumpra com seu dever, Isabel poderá requerer, perante o Poder Judiciário, que ela seja obrigada a corrigir a via e arque com os danos ocorridos no carro dela."
			},
			"mensagens_npc":{
				"neutro" : [
					"Rodrigo: Todo dia eu vejo um buraco novo na rua...!",
				], 
				"acertou": [
					"Rodrigo: Muito obrigado por esclarecer essa duvida, presidente!",
					"Rodrigo: Espero que a prefeitura tenha mais atenção com as nossas ruas...",
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
		"prefeitura" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Reinaldo invade um shopping no Rio de Janeiro e ameaça explodi-lo com uma bomba que implantou em um lugar secreto do shopping, colocando diversas pessoas em perigo. No entanto, chega ao conhecimento da polícia que a bomba foi implantada por Reinaldo. Assim, a polícia consegue prender Reinaldo e, como ele não confessa em que lugar está a bomba, que pode explodir a qualquer momento, a polícia tem a ideia de torturá-lo para fazê-lo falar e, aproveitando que você está de passagem, questiona a você como poderiam prosseguir. Na condição de Presidente, você responde",
			"alternativas" : [
				"A tortura não é aceitável em qualquer circunstância, conforme determinado pela Constituição Federal, que estipula que ninguém será submetido a tortura, nem tratamento desumano ou degradante",
				"Como a tortura seria uma prática para impedir a explosão da bomba, seria aceitável torturar Reinaldo para garantir que ele falasse o lugar da bomba antes que um mal maior acontecesse"
			],
			"explicacoes" : {
				"True" : "Resposta correta, Presidente! A Constituição Federal, responsável por reger as demais leis do país, é expressa ao impor que a lei considerará o crime de tortura inafiançável e insuscetíveis de graça ou anistia pela justiça, além de determinar que ninguém será submetido a tortura nem tratamento desumano ou degradante, sem qualquer exceção.",
				"False" : "Resposta errada, Presidente. A Constituição Federal, responsável por reger as demais leis do país, é expressa ao impor que a lei considerará o crime de tortura inafiançável e insuscetíveis de graça ou anistia pela justiça, além de determinar que ninguém será submetido a tortura nem tratamento desumano ou degradante, sem qualquer exceção."
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
					"Isabela: Voce deve sempre dar o exemplo, Presidente!"
				]
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -1,
			"respondido" : false,
			"obrigatorio" :true
		},"escola" : {
			"tipo" : Mensagens.Tipos.PERGUNTA,
			"informacao" : "Juliana tem um ótimo desempenho escolar e sonha em estudar em uma faculdade pública, mas não sabe por quais meios pode ingressar em uma universidade federal. Sua amiga, Sabrina, sabendo da dúvida de Juliana, procura você para perguntar quais opções Juliana têm. Como Presidente, você responde",
			"alternativas" : [
				"Juliana poderá fazer a prova do Exame Nacional do Ensino Médio (ENEM), que tem o objetivo de avaliar o desempenho do estudante ao fim da escolaridade básica e que permite que sua nota seja utilizada no Sistema de Seleção Unificado (SISU) para ingresso nas universidades federais e estaduais de ensino superior",
				"Juliana terá que verificar todas as faculdades federais em que quer prestar vestibular e precisará ir para cada um dos Estados para fazer as respectivas provas"
			],
			"explicacoes" : {
				"True" : "Presidente, foi um ótimo conselho! Desde 2010, quando o governo federal criou o Sistema de Seleção Unificado para selecionar estudantes para instituições federais e estaduais de Ensino Superior, essa seleção acontece duas vezes ao ano, no primeiro ou no segundo semestres, é por meio da inscrição das notas que tirou no ENEM no sistema do SISU que a Juliana poderá ingressar na faculdade federal",
				"False" : "Presidente, o ingresso no ensino superior não funciona mais assim! Desde 2010, quando o governo federal criou o Sistema de Seleção Unificado para selecionar estudantes para instituições federais e estaduais de Ensino Superior, essa seleção acontece duas vezes ao ano, no primeiro ou no segundo semestres, é por meio da inscrição das notas que tirou no ENEM no sistema do SISU que a Juliana poderá ingressar na faculdade federal"
			},
			"conversa_npc" : [
			],
			"mensagens_npc":{
				"neutro" : [
					"Thainá: Olá presidente, alguns alunos estão com dúvidas com relação ao ingresso no ensino superior",
					"Thainá: Gostaria de entrar para nos ajudar, certo?",
					"Thainá: Vá a porta ao meu lado."
				], 
				"acertou": [
					"Thainá: Presidente, muito obrigado pela sua orientação!",
					"Thainá: Agora é foco no ENEM!"
				],
				"errou" : [
					"Thainá: Presidente, acho que vale a pena estudar mais sofre as formas de ingresso no ensino superior!"
				]
			},
			"correta" : 0,
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
