extends Node2D

enum Tipos { TEXTO, IMAGEM, VIDEO, AUDIO }
var textos = {
	
	"sul" : {
		"1" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "A mecanização das lavouras no Sul está ocasionando um crescente nível de desemprego, resultando na migração para outros estados brasileiros e o surgimento de boias-frias. Esses trabalhadores rurais sem-terra são tratados de forma exploratória, com baixos salários, péssimas condições de saúde e moradia. Embora os boias-frias não estejam restritos apenas à Região Sul do Brasil, o estado do Paraná é a unidade federativa com o maior número de pessoas nessas condições.",
			"alternativas" : [
				"Trazer trabalhadores de outros lugares, sem possuir recursos.",
				"Implementação de cursos profissionalizantes aos trabalhadores."
			],
			"explicacoes" : {
				"True" : "Olá, presidente, como chefe de estado você pode sancionar um projeto de lei que beneficie os trabalhadores, como na resposta que você escolheu, portanto você ganhou 1 ponto na barra de aprovaçao de governo.",
				"False" : "Olá, presidente, como você escolheu trazer trabalhadores mesmo não tendo recursos, você foi enquadrado no crime de improbidade fiscal já que está criando dispensas fora do orçamento, causando prejuízo ao erário, logo, você perdeu 2 pontos na barra de aprovação do governo."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},
		"2" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Um grande resort planeja expandir a sua área, mas após um estudo ambiental, foi constatado que há espécies de plantas que só existem naquele local. O dono desse resort, que também é senador, oferece verba e apoio a você, caso o terreno for liberado. O que fazer:",
			"alternativas" : [
				"Recusar a proposta e denunciar para o Ministério Público.",
				"Aceitar a verba e o apoio."
			],
			"explicacoes" : {
				"True" : "Olá, presidente, como chefe de estado você demonstrou integridade ao denunciar uma tentativa de corrupção advinda de dentro do poder legislativo, seu ato fez juz à seu cargo, portanto sua barra de aprovação aumentou em 1 ponto",
				"False" : "Olá, presidente, como chefe de estado você não pode aceitar dinheiro ou favorecimentos em função do seu cargo. O enriquecimento ilícito, como é o caso da sua decisão, é considerado crime de improbidade admnistrativa e pode levar ao seu impeachment, desta forma a sua barra de aprovação diminuiu em 2 pontos"
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},
		"3" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Uma construtora, em troca de apoio nas próximas eleições, solicita a você que escolha essa empresa para a construção de diversas obras públicas, mesmo gastando muito mais dinheiro da população. O que você deve fazer:",
			"alternativas" : [
				"Aceita a proposta.",
				"Recusar a proposta e denunciar a construtora para o Ministério Público"
			],
			"explicacoes" : {
				"True" : "Olá, presidente, como chefe de estado você agiu de forma exemplar ao denunciar uma tentativa de corrupção e em função disso você ganhou 1 ponto em sua barra de aprovação. A população fica feliz em ver seu presidente expondo esquemas de corrupção.",
				"False" : "Olá, presidente, como chefe de estado você não pode aceitar dinheiro ou favorecimentos em função do seu cargo. Atos que conferem prejuízo erário, como é o caso da sua escolha anterior, são considerados crimes de improbidade admnistrativa e podem levar ao seu impeachment."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},
		"4" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Uma madeireira estrangeira quer explorar uma região de mata preservada. O que você fará?",
			"alternativas" : [
				"Negociar com a empresa para que ela possa explorar a região.",
				"Não negociar em função da preservação da flora local."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, para explorar esta região, a madeireira precisa da autorização de exploração (AUTEX) para que tenha legalidade sobre a região. Ao negar a negociação com esta empresa e a  denunciar para o Ministério Público você ajudou responsabilizar uma empresa que estava prejudicando a flora local por agir de forma ilícita. Em função do seu ato, sua barra de aprovação aumentou 1 ponto.",
				"False" : "Olá, Presidente, para explorar esta região, a madeireira precisa da autorização de exploração  (AUTEX) para que tenha legalidade sobre a região. Ao aceitar a negociação com a madeireira você cometeu o crime de corrupção passiva, pois utilizou de seu cargo público para receber vantagem indevida mediante ao fornecimento de meios para regular uma empresa que agia de forma ilegal em troca de favorecimento pessoal para você e sua família. Desta forma você perdeu 2 pontos na barra de aprovação do governo"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},
		"5" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Uma empresa quer monopolizar as linhas de transporte de um estado, como o governador é seu amigo e a empresa tem contato direto com você, ela te oferece verba para o financiamento da próxima campanha em troca de ser indicada para o contrato PPP. O que você fará?",
			"alternativas" : [
				"Conversar com o governador, seu amigo, para facilitar a contratação",
				"Recusa a proposta e denuncia para o Ministério Público."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, denunciando essa tentiva de corrupção ao Ministério Público (MP), você estará realizando a escolha correta perante a lei e a ética, já que denunciou uma tentativa de corrupção, portanto, receberá 1 ponto no índice de aprovação do governo",
				"False" : "Olá, Presidente, ao aceitar a proposta da empresa e falar com o governador você cometeu o crime de corrupção passiva, pois utilizou de seu cargo público para receber vantagem indevida mediante favorecimento no contrato de concessão, logo, você perdeu 2 pontos no índice de aprovação do governo ."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},
		"6" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Após estacionar com o carro pessoal em local proibido, um guarda de trânsito lhe aplicou uma multa. O que você deve fazer?",
			"alternativas" : [
				"Realizar o pagamento da multa, assim como um cidadão comum",
				"Utilizar seu cargo para cassar o emprego do guarda de trânsito"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, ao escolher pagar a multa como um cidadão comum, você recebeu 1 ponto, justamente por manter a integridade do cargo presidencial.",
				"False" : "Olá, Presidente, ao utilizar o poder presidencial para cassar o mandato de um funcionário público você estará cometendo crime de abuso de autoridade e será julgado por isso, logo, perdeu 2 pontos no índice de aprovação do jogo  por comprometer a integridade do ccargo presidencial."
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},
		"mercado" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Devido a falta de abastecimento, o preço de arroz está muito alto, e há mercados praticando preços abusivos, com o intuito de obter lucro. Nessa situação, o que o consumidor deve fazer?",
			"alternativas" : [
				"Nada, pois o mercado é livre para cobrar qualquer preço.",
				"Deve denunciar o mercado ao Procon por práticas abusivas."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você escolheu corretamente, pois a elevação dos preços sem justa causa é considerado crime pelo Código de Defesa do Consumidor. Como você escolheu denunciar o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração dos direitos do consumidor.",
				"False" : "Olá, Presidente, você deve ter se esquecido, mas a elevação dos preços, sem justa causa, não pode ser feita pelo mercado, porque o Código de Defesa do Consumidor prevê isso como uma prática abusiva, embora você tenha feito essa escolha, não se preocupe, você não perdeu nenhum ponto."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"escola" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "A nossa escola está com diversos problemas estruturais, faltam computadores, cadeiras e até materiais básicos, como giz. A quem podemos recorrer?",
			"alternativas" : [
				"Presidente",
				"Prefeito"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, parece que seu problema de memória está melhorando, não é mesmo? você até se lembrou das obrigações de um dos cargos do poder executivo. Realmente, quem cuida dessas questões é o prefeito, parabéns por ter acertado, você ganhou 1 ponto.",
				"False" : "Olá, Presidente, parece que você ainda não recuperou sua memória completamente, mas devo lhe dizer que quem cuida de questões como esta não é você, mas sim o prefeito. Para sua sorte, nenhum ponto foi perdido"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"prefeitura" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "As ruas da cidade estão sem iluminação há muito tempo, a quem devemos recorrer nessas situações?",
			"alternativas" : [
				"Prefeito",
				"Companhia de energia"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você respondeu corretamente, é de responsabilidade da prefeitura cuidar da iluminação em áres públicas, tais como ruas, parques e praças. Por ter acertado a pergunta você ganhou 1 ponto!.",
				"False" : "Olá, Presidente, você deve ter se esquecido de novo, mas a manutenção da iluminação em locais públicos não é de responsabilidade das companhias elétricas, embora você não esteja correto na sua resposta, você não perdeu nenhum ponto."
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		}
	}, "sudeste" : {
		
		"1" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Pergunta 1",
			"alternativas" : [
				"Alternativa errada",
				"Alternativa certa"
			],
			"explicacoes" : {
				"True" : "Explicação correta",
				"False" : "Explicação errada"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},"mercado" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Devido a falta de abastecimento, o preço de arroz está muito alto, e há mercados praticando preços abusivos, com o intuito de obter lucro. Nessa situação, o que o consumidor deve fazer?",
			"alternativas" : [
				"Nada, pois o mercado é livre para cobrar qualquer preço.",
				"Deve denunciar o mercado ao Procon por práticas abusivas."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você escolheu corretamente, pois a elevação dos preços sem justa causa é considerado crime pelo Código de Defesa do Consumidor. Como você escolheu denunciar o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração dos direitos do consumidor.",
				"False" : "Olá, Presidente, você deve ter se esquecido, mas a elevação dos preços, sem justa causa, não pode ser feita pelo mercado, porque o Código de Defesa do Consumidor prevê isso como uma prática abusiva, embora você tenha feito essa escolha, não se preocupe, você não perdeu nenhum ponto."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"escola" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "A nossa escola está com diversos problemas estruturais, faltam computadores, cadeiras e até materiais básicos, como giz. A quem podemos recorrer?",
			"alternativas" : [
				"Presidente",
				"Prefeito"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, parece que seu problema de memória está melhorando, não é mesmo? você até se lembrou das obrigações de um dos cargos do poder executivo. Realmente, quem cuida dessas questões é o prefeito, parabéns por ter acertado, você ganhou 1 ponto.",
				"False" : "Olá, Presidente, parece que você ainda não recuperou sua memória completamente, mas devo lhe dizer que quem cuida de questões como esta não é você, mas sim o prefeito. Para sua sorte, nenhum ponto foi perdido"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"prefeitura" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "As ruas da cidade estão sem iluminação há muito tempo, a quem devemos recorrer nessas situações?",
			"alternativas" : [
				"Prefeito",
				"Companhia de energia"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você respondeu corretamente, é de responsabilidade da prefeitura cuidar da iluminação em áres públicas, tais como ruas, parques e praças. Por ter acertado a pergunta você ganhou 1 ponto!.",
				"False" : "Olá, Presidente, você deve ter se esquecido de novo, mas a manutenção da iluminação em locais públicos não é de responsabilidade das companhias elétricas, embora você não esteja correto na sua resposta, você não perdeu nenhum ponto."
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		}
	
		
	}, "centro-oeste" : {
		
		"1" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Pergunta 1",
			"alternativas" : [
				"Alternativa errada",
				"Alternativa certa"
			],
			"explicacoes" : {
				"True" : "Explicação correta",
				"False" : "Explicação errada"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},"mercado" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Devido a falta de abastecimento, o preço de arroz está muito alto, e há mercados praticando preços abusivos, com o intuito de obter lucro. Nessa situação, o que o consumidor deve fazer?",
			"alternativas" : [
				"Nada, pois o mercado é livre para cobrar qualquer preço.",
				"Deve denunciar o mercado ao Procon por práticas abusivas."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você escolheu corretamente, pois a elevação dos preços sem justa causa é considerado crime pelo Código de Defesa do Consumidor. Como você escolheu denunciar o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração dos direitos do consumidor.",
				"False" : "Olá, Presidente, você deve ter se esquecido, mas a elevação dos preços, sem justa causa, não pode ser feita pelo mercado, porque o Código de Defesa do Consumidor prevê isso como uma prática abusiva, embora você tenha feito essa escolha, não se preocupe, você não perdeu nenhum ponto."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"escola" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "A nossa escola está com diversos problemas estruturais, faltam computadores, cadeiras e até materiais básicos, como giz. A quem podemos recorrer?",
			"alternativas" : [
				"Presidente",
				"Prefeito"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, parece que seu problema de memória está melhorando, não é mesmo? você até se lembrou das obrigações de um dos cargos do poder executivo. Realmente, quem cuida dessas questões é o prefeito, parabéns por ter acertado, você ganhou 1 ponto.",
				"False" : "Olá, Presidente, parece que você ainda não recuperou sua memória completamente, mas devo lhe dizer que quem cuida de questões como esta não é você, mas sim o prefeito. Para sua sorte, nenhum ponto foi perdido"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"prefeitura" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "As ruas da cidade estão sem iluminação há muito tempo, a quem devemos recorrer nessas situações?",
			"alternativas" : [
				"Prefeito",
				"Companhia de energia"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você respondeu corretamente, é de responsabilidade da prefeitura cuidar da iluminação em áres públicas, tais como ruas, parques e praças. Por ter acertado a pergunta você ganhou 1 ponto!.",
				"False" : "Olá, Presidente, você deve ter se esquecido de novo, mas a manutenção da iluminação em locais públicos não é de responsabilidade das companhias elétricas, embora você não esteja correto na sua resposta, você não perdeu nenhum ponto."
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		}
		
	}, "norte" : {
		
		"1" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Pergunta 1",
			"alternativas" : [
				"Alternativa errada",
				"Alternativa certa"
			],
			"explicacoes" : {
				"True" : "Explicação correta",
				"False" : "Explicação errada"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},"mercado" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Devido a falta de abastecimento, o preço de arroz está muito alto, e há mercados praticando preços abusivos, com o intuito de obter lucro. Nessa situação, o que o consumidor deve fazer?",
			"alternativas" : [
				"Nada, pois o mercado é livre para cobrar qualquer preço.",
				"Deve denunciar o mercado ao Procon por práticas abusivas."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você escolheu corretamente, pois a elevação dos preços sem justa causa é considerado crime pelo Código de Defesa do Consumidor. Como você escolheu denunciar o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração dos direitos do consumidor.",
				"False" : "Olá, Presidente, você deve ter se esquecido, mas a elevação dos preços, sem justa causa, não pode ser feita pelo mercado, porque o Código de Defesa do Consumidor prevê isso como uma prática abusiva, embora você tenha feito essa escolha, não se preocupe, você não perdeu nenhum ponto."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"escola" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "A nossa escola está com diversos problemas estruturais, faltam computadores, cadeiras e até materiais básicos, como giz. A quem podemos recorrer?",
			"alternativas" : [
				"Presidente",
				"Prefeito"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, parece que seu problema de memória está melhorando, não é mesmo? você até se lembrou das obrigações de um dos cargos do poder executivo. Realmente, quem cuida dessas questões é o prefeito, parabéns por ter acertado, você ganhou 1 ponto.",
				"False" : "Olá, Presidente, parece que você ainda não recuperou sua memória completamente, mas devo lhe dizer que quem cuida de questões como esta não é você, mas sim o prefeito. Para sua sorte, nenhum ponto foi perdido"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"prefeitura" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "As ruas da cidade estão sem iluminação há muito tempo, a quem devemos recorrer nessas situações?",
			"alternativas" : [
				"Prefeito",
				"Companhia de energia"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você respondeu corretamente, é de responsabilidade da prefeitura cuidar da iluminação em áres públicas, tais como ruas, parques e praças. Por ter acertado a pergunta você ganhou 1 ponto!.",
				"False" : "Olá, Presidente, você deve ter se esquecido de novo, mas a manutenção da iluminação em locais públicos não é de responsabilidade das companhias elétricas, embora você não esteja correto na sua resposta, você não perdeu nenhum ponto."
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		}
		
	}, "nordeste" : {
		
		"1" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Pergunta 1",
			"alternativas" : [
				"Alternativa errada",
				"Alternativa certa"
			],
			"explicacoes" : {
				"True" : "Explicação correta",
				"False" : "Explicação errada"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : -2,
			"respondido" : false
		},"mercado" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "Devido a falta de abastecimento, o preço de arroz está muito alto, e há mercados praticando preços abusivos, com o intuito de obter lucro. Nessa situação, o que o consumidor deve fazer?",
			"alternativas" : [
				"Nada, pois o mercado é livre para cobrar qualquer preço.",
				"Deve denunciar o mercado ao Procon por práticas abusivas."
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você escolheu corretamente, pois a elevação dos preços sem justa causa é considerado crime pelo Código de Defesa do Consumidor. Como você escolheu denunciar o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração dos direitos do consumidor.",
				"False" : "Olá, Presidente, você deve ter se esquecido, mas a elevação dos preços, sem justa causa, não pode ser feita pelo mercado, porque o Código de Defesa do Consumidor prevê isso como uma prática abusiva, embora você tenha feito essa escolha, não se preocupe, você não perdeu nenhum ponto."
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"escola" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "A nossa escola está com diversos problemas estruturais, faltam computadores, cadeiras e até materiais básicos, como giz. A quem podemos recorrer?",
			"alternativas" : [
				"Presidente",
				"Prefeito"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, parece que seu problema de memória está melhorando, não é mesmo? você até se lembrou das obrigações de um dos cargos do poder executivo. Realmente, quem cuida dessas questões é o prefeito, parabéns por ter acertado, você ganhou 1 ponto.",
				"False" : "Olá, Presidente, parece que você ainda não recuperou sua memória completamente, mas devo lhe dizer que quem cuida de questões como esta não é você, mas sim o prefeito. Para sua sorte, nenhum ponto foi perdido"
			},
			"correta" : 1,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		},
		"prefeitura" : {
			"tipo" : Tipos.TEXTO,
			"informacao" : "As ruas da cidade estão sem iluminação há muito tempo, a quem devemos recorrer nessas situações?",
			"alternativas" : [
				"Prefeito",
				"Companhia de energia"
			],
			"explicacoes" : {
				"True" : "Olá, Presidente, você respondeu corretamente, é de responsabilidade da prefeitura cuidar da iluminação em áres públicas, tais como ruas, parques e praças. Por ter acertado a pergunta você ganhou 1 ponto!.",
				"False" : "Olá, Presidente, você deve ter se esquecido de novo, mas a manutenção da iluminação em locais públicos não é de responsabilidade das companhias elétricas, embora você não esteja correto na sua resposta, você não perdeu nenhum ponto."
			},
			"correta" : 0,
			"acertou" : false,
			"valorAcerto" : 1,
			"valorErro" : 0,
			"respondido" : false
		}
		
	}
	
}

func _ready():
	pass 

func perguntaRegiaoAtual(index):
	return textos[Global.fase][index]

func regiaoCompleta(regiao):
	return perguntasRespondidasRegiaoAtual(regiao) == textos[regiao].size()                                                                                                               

func perguntasRegiaoRespondidas():
	return perguntasRespondidasRegiaoAtual(Global.fase)

func perguntasRespondidasRegiaoAtual(regiao):
	var total = 0
	for a in textos[regiao]:
		total += int(textos[regiao][a]["respondido"])
	return total

func completouPerguntas():
	return perguntasRegiaoRespondidas() == textos[Global.fase].size()

