<img src="https://images.unsplash.com/photo-1639431682289-72b9ebb75895?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&w=6000" referrerpolicy="same-origin" style="display: block; object-fit: cover; border-radius: 0px; width: 100%; height: 40vh; opacity: .5; object-position: center 48%;">

---
# Desafios de Código - Simulando desafios com IAs Generativas

# Desafio 1: **Analisando Sentimentos**

## **Descrição**

Imagine que você foi designado a criar um algoritmo para analisar o sentimento de um comentário fornecido pelo usuário, simulando analises de sentimentos, um assunto muito comentado dentro do Machine Learning. O programa solicitará ao usuário que insira um comentário, e em seguida, dividirá esse comentário em palavras individuais.

Após isso, ele contará o número de palavras positivas, negativas e neutras dentro do comentário, baseando-se em uma lista pré-definida de palavras-chave. As palavras consideradas positivas incluem "`bom`", "`ótimo`", "`excelente`", "`maravilhoso`", "`gostei`" e "`incrível`" enquanto as palavras negativas incluem "`ruim`", "`péssimo`", "`horrível`", "`terrível`" e "`odeio`". Já as palavras neutras incluem "`mas`", "`deixou`", "`apesar`" e "`embora`"

Depois de calcular as contagens de palavras positivas e negativas, o programa determinará o sentimento predominante do comentário. Se houver mais palavras positivas do que negativas, o sentimento será considerado positivo. Se houver mais palavras negativas do que positivas, o sentimento será considerado negativo. Caso contrário, se houver um número igual de palavras positivas e negativas, o sentimento será neutro.

## **Entrada**

O usuário será solicitado a fornecer um comentário como entrada para o programa.

## **Saída**

O programa exibirá o sentimento do comentário inserido pelo usuário, que pode ser "Positivo", "Negativo" ou "Neutro", dependendo da análise das palavras-chave no comentário.

## **Exemplos**

A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada | Saída |
| --- | --- |
| A mentoria foi incrível, aprendi muito! | Sentimento: Positivo |
| O clima hoje está terrível, odeio dias quentes. | Sentimento: Negativo |
| A comida estava boa, mas o serviço deixou a desejar. | Sentimento: Neutro |

### **Atenção:**

Se você não está familiarizado com a linguagem de programação, não se preocupe!

Você pode usar uma das seguintes inteligências artificiais para te ajudar a entender o código:

- **ChatGPT:** https://chat.openai.com/
- **Copilot:** https://copilot.microsoft.com/
- **Gemini:** https://gemini.google.com/
- **Amazon Q** (Para Empresas): https://aws.amazon.com/pt/q/

Abaixo adicionamos algumas sugestões e uso e Prompts para te auxiliar na resolução:

| Sugestões de Uso | Sugestões de Prompts |
| --- | --- |
| Explicação de Conceitos | Pode me explicar o que são estruturas de dados e dar exemplos? |
| Entendimento do Problema | Quais são as restrições ou requisitos específicos que devo considerar neste desafio? |
| Sugestões de Abordagem | Quais são as etapas principais que devo seguir para resolver este desafio? |
| Ajuda na Depuração | Estou recebendo um erro de sintaxe neste trecho de código. O que pode estar errado? |
| Revisão de Algoritmos | Você pode revisar meu algoritmo de ordenação e me dar feedback sobre sua eficiência? |

# Código:

```python
Importa o módulo re, que é a biblioteca de expressões regulares do Python.
import re

def analyze_sentiment():
# Entrada do usuário
comentario = input()
# Divisão do comentário em palavras
palavras = re.findall(r'\\b\\w+\\b', comentario.lower())

# Lista de palavras positivas, negativas e neutras
positivas = ["bom", "boa", "ótimo", "excelente", "maravilhoso", "gostei", "incrível"]
negativas = ["ruim", "péssimo", "horrível", "terrível", "odeio"]
neutras = ["mas", "deixou", "apesar", "embora"]

# Contagem de palavras positivas, negativas e neutras
count_positivo = sum(palavra in positivas for palavra in palavras)
count_negativo = sum(palavra in negativas for palavra in palavras)
count_neutro = sum(palavra in neutras for palavra in palavras)

# Verifica se há mais palavras positivas do que negativas no comentário
if count_positivo > count_negativo and count_neutro == 0:
    return "Positivo"
elif count_negativo > count_positivo and count_neutro == 0:
    return "Negativo"
else:
    return "Neutro"
    
# Saída esperada
sentimento = analyze_sentiment()
print("Sentimento:", sentimento)
```

---

# Desafio 2:  **Avaliando Prompts**

## **Descrição**

Neste desafio, você será solicitado a criar um algoritmo que avalia se um prompt fornecido pelo usuário está adequado. O programa solicitará ao usuário que insira um prompt e, em seguida, verificará se o prompt contém palavras-chave relevantes. As palavras-chave consideradas relevantes serão "`inteligência artificial`", "`sistemas de recomendação online`", "`exemplo de conversação`", "explique conceitos" e "dicas de tecnologia". Se o prompt incluir pelo menos uma dessas palavras-chave, o programa informará que o prompt está adequado; caso contrário, ele indicará que o prompt não está adequado e sugerirá ao usuário que inclua palavras-chave relevantes.

## **Entrada**

O usuário será solicitado a inserir um prompt como entrada para o programa.

## **Saída**

O programa exibirá feedback para o usuário com base na avaliação do prompt inserido. Se o prompt contiver palavras-chave relevantes, o programa informará que o prompt está adequado. Caso contrário, ele indicará que o prompt não está adequado e sugerirá ao usuário que inclua palavras-chave relevantes.

## **Exemplos**

A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada | Saída |
| --- | --- |
| Por favor, explique conceitos de inteligência artificial. | O prompt está adequado. |
| Crie exemplos de conversação. | O prompt está adequado. |
| Qual é a coisa mais bonita do mundo? | O prompt não está adequado. Inclua palavras-chave relevantes. |

### **Atenção:**

Se você não está familiarizado com a linguagem de programação, não se preocupe! Você pode usar uma das seguintes inteligências artificiais para te ajudar a entender o código:

- **ChatGPT:** https://chat.openai.com/
- **Copilot:** https://copilot.microsoft.com/
- **Gemini:** https://gemini.google.com/
- **Amazon Q** (Para Empresas): https://aws.amazon.com/pt/q/

Abaixo adicionamos algumas sugestões e uso e Prompts para te auxiliar na resolução:

| Sugestões de Uso | Sugestões de Prompts |
| --- | --- |
| Explicação de Conceitos | Pode me explicar o que são estruturas de dados e dar exemplos? |
| Entendimento do Problema | Quais são as restrições ou requisitos específicos que devo considerar neste desafio? |
| Sugestões de Abordagem | Quais são as etapas principais que devo seguir para resolver este desafio? |
| Ajuda na Depuração | Estou recebendo um erro de sintaxe neste trecho de código. O que pode estar errado? |
| Revisão de Algoritmos | Você pode revisar meu algoritmo de ordenação e me dar feedback sobre sua eficiência? |

## Código:

```python
# Entrada do usuário
prompt_usuario = input()

# Função para avaliar se o prompt está adequado
def avaliar_prompt(prompt):
    # Lista de palavras-chave relevantes
    palavras_chave = ["inteligência artificial", "sistemas de recomendação online", "exemplos de conversação", "explique conceitos", "dicas de tecnologia"]

    # Verifica se o prompt contém pelo menos uma das palavras-chave
    for palavra in palavras_chave:
        if palavra in prompt.lower():
            return "O prompt está adequado."
    
    return "O prompt não está adequado. Inclua palavras-chave relevantes."

# Avaliar o prompt do usuário
feedback_usuario = avaliar_prompt(prompt_usuario)

# Exibir feedback
print(feedback_usuario)
```

---

# Desafio 3: **Refatorando com Eficiência**

## **Desafio**

Neste desafio, você será solicitado a fornecer uma breve descrição de boas práticas de refatoração de código em três áreas específicas: identificação clara de funções, separação da entrada de dados e uso de nomes descritivos para variáveis e funções.Cada descrição deve indicar como o código pode ser melhorado nesses aspectos. O objetivo é simularmos a ação de pesquisas em IAs Generativas de busca e pesquisa, dessa forma, cada entrada simula um bom prompt de pesquisa.

## **Entrada:**

A entrada será uma string de texto que representa um bom promtp de pesquisa para IAs Generativas.Após inserir sua descrição, o programa irá processá-la e fornecer um retorno sobre a prática de refatoração sugerida. Se a entrada corresponder a uma das três áreas especificadas, o programa irá sugerir a respectiva melhoria. Caso contrário, informará que a opção é inválida.

## **Saída:**

Após inserir sua descrição, o programa irá processá-la e fornecer um retorno sobre a prática de refatoração sugerida. Se a entrada corresponder a uma das três áreas especificadas, o programa irá sugerir a respectiva melhoria. Caso contrário, informe: **`Opção inválida.`Atenção:**É extremamente importante que as saídas sejam exatamente iguais às descritas na descrição do desafio de código.

## **Exemplos**

A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada | Saída |
| --- | --- |
| Dica de boas práticas de refatoração de código, nas funções. | Separe funções em unidades coesas e com responsabilidades únicas. |
| Dica de boas práticas de refatoração de código, nas entrada de dados. | Valide e normalize as entradas para evitar inconsistências. |
| Dica de boas práticas de refatoração de código, nomenclaturas. | Use nomes descritivos para variáveis e funções. |

### **Atenção:**

Se você não está familiarizado com a linguagem de programação, não se preocupe!

Você pode usar uma das seguintes inteligências artificiais para te ajudar a entender o código:

- **ChatGPT:** https://chat.openai.com/
- **Copilot:** https://copilot.microsoft.com/
- **Gemini:** https://gemini.google.com/
- **Amazon Q** (Para Empresas): https://aws.amazon.com/pt/q/

Abaixo adicionamos algumas sugestões e uso e Prompts para te auxiliar na resolução:

| Sugestões de Uso | Sugestões de Prompts |
| --- | --- |
| Explicação de Conceitos | Pode me explicar o que são estruturas de dados e dar exemplos? |
| Entendimento do Problema | Quais são as restrições ou requisitos específicos que devo considerar neste desafio? |
| Sugestões de Abordagem | Quais são as etapas principais que devo seguir para resolver este desafio? |
| Ajuda na Depuração | Estou recebendo um erro de sintaxe neste trecho de código. O que pode estar errado? |
| Revisão de Algoritmos | Você pode revisar meu algoritmo de ordenação e me dar feedback sobre sua eficiência? |

## Código:

```python
def identificar_funcoes(texto):
    # Retorna uma mensagem sobre separar funções em unidades coesas e com responsabilidades únicas.
    return "Separe funções em unidades coesas e com responsabilidades únicas."

def entrada_de_dados(texto):
    # Retorna uma mensagem sobre validar e normalizar as entradas para evitar inconsistências.
    return "Valide e normalize as entradas para evitar inconsistências."

def nomenclatura_significativa(texto):
    # Retorna uma mensagem sobre usar nomes descritivos para variáveis e funções.
    return "Use nomes descritivos para variáveis e funções."

def processar_entrada(texto):
    # Dicionário mapeando textos para funções
    opcoes = {
        "Dica de boas práticas de refatoração de código, nas funções.": identificar_funcoes,
        "Dica de boas práticas de refatoração de código, nas entrada de dados.": entrada_de_dados,
        "Dica de boas práticas de refatoração de código, nomenclaturas.": nomenclatura_significativa
    }

    # Verifica se o texto está presente nas opções
    if texto in opcoes:
        # Chama a função correspondente ao texto e retorna o resultado
        return opcoes[texto](texto)
    else:
        # Retorna uma mensagem de opção inválida se o texto não estiver nas opções
        return "Opção inválida."

def desafio():
    # Solicita uma entrada do usuário
    entrada = input()
    # Processa a entrada e obtém a saída
    saida = processar_entrada(entrada)
    # Exibe a saída
    print(saida)

desafio()
```

---

# Desafio 4: **Sugestão de Compras Inteligente**

## **Desafio**

Neste desafio, você deve criar um programa que simule o auxílio de vendas de um site de catálogos de cogumelos utilizando inteligência artificial. O intuito é oferecer aos clientes sugestões de cogumelos que estão em promoção. Dessa forma, **o programa deve permitir que o usuário informe o nome de um cogumelo desejado e, com base nessa informação, deve sugerir até dois cogumelos adicionais da lista, cujos valores sejam iguais ou menores que o do cogumelo selecionado pelo cliente.** No caso de não houver sugestões disponíveis, ou seja, se o cogumelo escolhido for o mais caro, o programa deve exibir uma mensagem indicando que não há sugestões.

A baixo apresentamos a lista de cogumelos oferecidos pela loja com todos os seus valores. **Considere que essa lista já está ordenada por prioridade, ou seja, você deve oferecer como alternativas nessa ordem:**

| Cogumelo | Valor |
| --- | --- |
| Shitake | 10 |
| Portobello | 8 |
| Shimeji | 6 |
| Champignon | 12 |
| Funghi | 16 |
| Porcini | 16 |

## **Entrada:**

A entrada será uma string representando o nome do cogumelo desejado pelo usuário.

## **Saída:**

Uma lista com no máximo 2 sugestões de cogumelos mais baratos do que o enviado como entrada. Lembrando que a sugestão das alternativas deve considerar a lista de cogumelos na ordem descrita na tabela supracitada neste desafio.

**IMPORTANTE: Considere que cada saída (cogumelo selecionado) deve está em linhas diferentes.**

## **Exemplos**

A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada | Saída |
| --- | --- |
| Shitake | Portobello - Valor: 8
||Shimeji - Valor: 6 |
| Champignon | Shitake - Valor: 10
||Portobello - Valor: 8 |
| Portobello | Shimeji - Valor: 6 |
| Shimeji | Desculpe, não há sugestões disponíveis. |

### **Atenção:**

Se você não está familiarizado com a linguagem de programação, não se preocupe!

Você pode usar uma das seguintes inteligências artificiais para te ajudar a entender o código:

- **ChatGPT:** https://chat.openai.com/
- **Copilot:** https://copilot.microsoft.com/
- **Gemini:** https://gemini.google.com/
- **Amazon Q** (Para Empresas): https://aws.amazon.com/pt/q/

Abaixo adicionamos algumas sugestões e uso e Prompts para te auxiliar na resolução:

| Sugestões de Uso | Sugestões de Prompts |
| --- | --- |
| Explicação de Conceitos | Pode me explicar o que são estruturas de dados e dar exemplos? |
| Entendimento do Problema | Quais são as restrições ou requisitos específicos que devo considerar neste desafio? |
| Sugestões de Abordagem | Quais são as etapas principais que devo seguir para resolver este desafio? |
| Ajuda na Depuração | Estou recebendo um erro de sintaxe neste trecho de código. O que pode estar errado? |
| Revisão de Algoritmos | Você pode revisar meu algoritmo de ordenação e me dar feedback sobre sua eficiência? |

## Código:

```python
# Entrada do usuário
cogumelo_desejado = input()

# Função para sugerir cogumelos com preços mais baixos com base em um cogumelo desejado.
def sugerir_cogumelos(cogumelo_desejado):
    # Define o dicionário onde as chaves são os tipos de cogumelos e os valores são os preços correspondentes
    catalogo = {
        "Shitake": 10,
        "Portobello": 8,
        "Shimeji": 6,
        "Champignon": 12,
        "Funghi": 16,
        "Porcini": 16
    }

    # Verifica se o cogumelo desejado está no catálogo
    if cogumelo_desejado in catalogo:
        # Armazena o preço do cogumelo desejado e cria uma lista vazia para as sugestões
        valor_desejado = catalogo[cogumelo_desejado]
        sugestoes = []
        
        # Procura por cogumelos mais baratos no catálogo
        for cogumelo, valor in catalogo.items():
            if valor <= valor_desejado and cogumelo != cogumelo_desejado:
                sugestoes.append((cogumelo, valor))  # Adiciona uma tupla (cogumelo, valor)
                if len(sugestoes) == 2:
                    break
        
        if not sugestoes:
            # Se não houver sugestões, exibe a mensagem indicada no enunciado
            print("Desculpe, não há sugestões disponíveis.")
        else:
            for sugestao, valor_sugestao in sugestoes:
                print(f"{sugestao} - Valor: {valor_sugestao}")
    else:
        # Se o cogumelo desejado não estiver no catálogo, exibe uma mensagem de erro indicada no enunciado
        print("Cogumelo não encontrado no catálogo.")

# Chamada da função para sugerir cogumelos
sugerir_cogumelos(cogumelo_desejado)

```

---

# Desafio 5: **Calculando Métricas de Avaliação**

## **Desafio**

Você faz parte de uma equipe que está desenvolvendo modelos de Machine Learning para identificar a probabilidade de inadimplência em empréstimos concedidos por uma instituição financeira. Após treinar os modelos, sua tarefa é avaliar seu desempenho usando algumas métricas de avaliação. Nesse contexto, o desafio é criar um algoritmo que receba n matrizes de confusão e retorne o índice, precisão e acurácia da matriz que apresenta o melhor desempenho com base no cálculo dessas métricas. Lembrando que:

- **Acurácia é calculada pela fórmula:** (VP + VN) / (VP + FP + FN + VN)
- **Precisão é calculada pela fórmula:** VP / (VP + FP)

Onde:

- **VP (Verdadeiro Positivo):** Casos em que o modelo previu corretamente a classe positiva.
- **FP (Falso Positivo ou Erro Tipo I):** Casos em que o modelo previu incorretamente a classe positiva.
- **FN (Falso Negativo ou Erro Tipo II):** Casos em que o modelo previu incorretamente a classe negativa.
- **VN (Verdadeiro Negativo):** Casos em que o modelo previu corretamente a classe negativa.

## **Entrada:**

A entrada consiste em uma string composta por: n, representando o número de matrizes de confusão, seguido dos valores que compõem as n matrizes.

Cada matriz consiste em quatro valores, onde os dois primeiros representam a primeira linha da matriz, composta por verdadeiros positivos (VP) e falsos positivos (FP); os dois últimos valores representam a segunda linha, que é composta por falsos negativos (FN) e verdadeiros negativos (VN). As duas linhas e os valores que as compõem estão separados por vírgulas.

## **Saída:**

O resultado esperado inclui o valor do índice, acurácia e precisão (arredondada para duas casas decimais) da matriz com melhor desempenho com base no cálculo dessas métricas.

## **Exemplos**

A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

| Entrada | Saída |
| --- | --- |
| 3        |Índice: 1
50,10,5,85 | Acurácia: 0.9|
20,5,8,67  | Precisão: 0.83 |
30,12,4,88 | |
| 4        | Índice: 3    
70,15,8,78 | Acurácia: 0.94
60,20,10,80| Precisão: 0.9
45,5,3,92  | 
80,7,15,98 |
| 2        | Índice: 1
100,0,0,50 | Acurácia: 1.0
80,10,2,98 | Precisão: 1.0|

### **Atenção:**

Se você não está familiarizado com a linguagem de programação, não se preocupe!

Você pode usar uma das seguintes inteligências artificiais para te ajudar a entender o código:

- **ChatGPT:** https://chat.openai.com/
- **Copilot:** https://copilot.microsoft.com/
- **Gemini:** https://gemini.google.com/
- **Amazon Q** (Para Empresas): https://aws.amazon.com/pt/q/

Abaixo adicionamos algumas sugestões e uso e Prompts para te auxiliar na resolução:

| Sugestões de Uso | Sugestões de Prompts |
| --- | --- |
| Explicação de Conceitos | Pode me explicar o que são estruturas de dados e dar exemplos? |
| Entendimento do Problema | Quais são as restrições ou requisitos específicos que devo considerar neste desafio? |
| Sugestões de Abordagem | Quais são as etapas principais que devo seguir para resolver este desafio? |
| Ajuda na Depuração | Estou recebendo um erro de sintaxe neste trecho de código. O que pode estar errado? |
| Revisão de Algoritmos | Você pode revisar meu algoritmo de ordenação e me dar feedback sobre sua eficiência? |

## Código:

```python
# Função para calcular acurácia e precisão
def calcular_metricas(matriz):
    # Extração de VP, FP, FN e VN
    VP = int(matriz[0])
    FP = int(matriz[1])
    FN = int(matriz[2])
    VN = int(matriz[3])
    
    # Cálculo da acurácia
    acuracia = (VP + VN) / (VP + FP + FN + VN)
    
    # Cálculo da precisão
    if (VP + FP) == 0:
        precisao = 0
    else:
        precisao = VP / (VP + FP)
    
    return acuracia, precisao

# Função para encontrar a matriz com melhor desempenho
def melhor_desempenho(matrizes):
    melhor_indice = 0
    melhor_acuracia = 0
    melhor_precisao = 0
    
    for indice, matriz in enumerate(matrizes):
        acuracia, precisao = calcular_metricas(matriz)
        
        if (acuracia > melhor_acuracia) or (acuracia == melhor_acuracia and precisao > melhor_precisao):
            melhor_indice = indice
            melhor_acuracia = acuracia
            melhor_precisao = precisao
            
    return melhor_indice, melhor_acuracia, melhor_precisao

# Função para formatar as métricas corretamente
def formatar_metrica(valor):
    if valor == int(valor):
        return f"{valor:.1f}"
    else:
        return f"{valor:.2f}".rstrip('0').rstrip('.')

# Entrada do número de matrizes
n = int(input())
matrices = []

# Entrada das matrizes
for _ in range(n):
    matrix = input()
    matrices.append(matrix.split(','))

# Encontrar a matriz com melhor desempenho
indice, acuracia, precisao = melhor_desempenho(matrices)

# Imprimir os resultados formatados
print(f"Índice: {indice + 1}")
print(f"Acurácia: {formatar_metrica(acuracia)}")
print(f"Precisão: {formatar_metrica(precisao)}")

```