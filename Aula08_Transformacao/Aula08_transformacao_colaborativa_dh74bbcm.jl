### A Pluto.jl notebook ###
# v0.20.24

using Markdown
using InteractiveUtils

# ╔═╡ 910e9f5f-cb53-4be7-b45a-6b5174cec715
md"""
## Versão: Colaborativa

Adaptada de [https://pluto.land/n/dh74bbcm](https://pluto.land/n/dh74bbcm). Mantém a sequência completa 8.1–8.11, incluindo os desafios de depuração.

Os exemplos originais foram preservados; as orientações adicionais identificam a aplicação desta versão.
"""

# ╔═╡ 601f4066-6839-4038-950e-8e80bbf246fc
md"""
# Aula 08 — Técnicas de construção de algoritmos: transformação

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 7e23d48a-281a-4e5c-8c00-815c4e562b17
md"""
### Tarefa 8.1 — Como transformar unidades?

**No Pluto:**
- Crie valores em Celsius.
- Aplique fórmula.
- Compare escalas.

*Por que importa:* A transformação evidencia que o mesmo fenômeno pode ser representado em diferentes sistemas.
"""

# ╔═╡ 40ca6f35-8799-4c73-a8b7-ca1da75f0d5d
md"""

##### Vamos começar com apenas um escalar (sem usar listas)

A fórmula para transformar Celsius em Fahrenheit:

Para zero graus Celsius temos:
(O °C × 9/5) + 32 = 32 °F

Generalizando:

(C × 9/5) + 32 = F

"""

# ╔═╡ 1c0a7cef-68c4-4e00-96f2-8ed9c4346294
let
	C = 25
	F = C * 9/5 + 32
end

# ╔═╡ 9570febc-b6cf-4a7b-ba97-e774ce9f5d7c
C = 30

# ╔═╡ 481daae7-d4ef-4318-92c4-af8c36bd97f8
F = C * 9/5 + 32

# ╔═╡ 9107ab2b-b6b8-4dd4-b045-40cff43a6c4f


# ╔═╡ 421dd964-4a4f-4475-9588-b4e99fd1411f
md"""

##### Agora vamos usar listas: 

"""

# ╔═╡ 127c3fd9-4287-46c7-a714-009b947217d9
let
    celsius = [25, 28, 30]
    fahrenheit = celsius .* 9/5 .+ 32
end

# ╔═╡ 5e7b3f5a-6b1a-4378-b819-ef1740ed8e2f
md"""
**Aplicação — 8.1**

Pessoa A prevê a conversão escalar; pessoa B executa e registra. Comparem o raciocínio e troquem papéis ao passar para a lista.
"""

# ╔═╡ ad277bf4-6dca-417f-8121-78ccfe2d9ddf
md"""
### Tarefa 8.2 — Como transformar valores em categorias?

**No Pluto:**
- Use médias numéricas.
- Classifique cada uma.
- Discuta perda e ganho de informação.

*Por que importa:* Categorizar simplifica a leitura, mas pode esconder nuances dos dados.
"""

# ╔═╡ 2bfb01a8-9a11-467a-ae3a-67fa9537cbb5
md"""

##### Vamos começar com apenas escalares (sem usar listas)

"""


# ╔═╡ 2ed202f9-d6a6-4035-9d70-441d020b1cb1
nota1 = rand(0:10) #função rand: execute esta célula algumas vezes e veja o que ela                     #faz

# ╔═╡ d1481488-1c56-47b6-825a-8b49909f97a2
let
	nota1 = rand(0:10)
	nota2 = rand(0:10)
	nota3 = rand(0:10)
	println(nota1, " ", nota2, " ", nota3)
	media = nota1+nota2+nota3/3
	println("media = ", media)
	categoria = media >= 7 ? "ok" : "rever"
end

# ╔═╡ cc74c95b-2117-45ff-8189-79ba16d766c1
md"""

##### Tem algo de estranho no código acima! Vamos rever ???

"""


# ╔═╡ 8a1355c5-8e36-42aa-bfa5-0fcabb7d9951
md"""

##### Agora vamos usar listas: 

"""


# ╔═╡ 70f28559-16e4-4cef-bffa-57dc6726a55e
let
    medias = [4.5, 6.5, 8.0]
    categorias = [m>=7 ? "ok" : "rever" for m in medias]
end

# ╔═╡ 460bb2e8-37b6-4949-a704-a4bb431a6c3b
md"""

##### Vamos 4 médias e coloca-las na lista medias ? 

"""


# ╔═╡ 7bd3766e-e0b9-4111-830c-b5bd24745346
let
	medias = [0.0,0.0,0.0,0.0]
	for i in 1:4 #loop para construção de lista com 4 médias
		nota1 = rand(0:10)
		nota2 = rand(0:10)
		nota3 = rand(0:10)
		medias[i] = +(nota1,nota2,nota3)/3 
		println(medias[i])
	end
	categorias = [m>=7 ? "ok" : "rever" for m in medias]
end

# ╔═╡ 2eba0599-84b0-4616-a443-108e4f7d5fec
md"""
**Aplicação — 8.2**

Uma pessoa explica a média pretendida; a outra rastreia a ordem real das operações. Produzam juntos uma hipótese e um teste para o comportamento estranho.
"""

# ╔═╡ a37d0f1e-51c5-4479-98ac-020efcf5ffae
md"""
### Tarefa 8.3 — Como transformar dados brutos em frequência?

**No Pluto:**
- Conte ocorrências.
- Crie dicionário.
- Interprete a distribuição.

*Por que importa:* Frequência transforma respostas individuais em padrão coletivo.
"""

# ╔═╡ bb186749-42c6-4be8-8d09-873085045714
let
    dados = ["A","B","A","C","A"]
    freq = Dict(x=>count(==(x), dados) for x in unique(dados))
	println(freq)
	println(keys(freq))
	print(freq["C"])
end

# ╔═╡ 28ef554f-4fb9-428b-a600-a5f38c1efaf1
md"""
**Aplicação — 8.3**

Uma pessoa conta manualmente e a outra usa o dicionário. Confiram chave por chave e expliquem eventuais divergências.
"""

# ╔═╡ 68ccfbc4-8414-4acf-a4ac-af052b4c146c
md"""
### Tarefa 8.4 — Como transformar uma lista filtrando valores?

**No Pluto:**
- Defina critério.
- Selecione elementos.
- Discuta o que ficou fora.

*Por que importa:* Filtrar exige explicitar critério e refletir sobre a parte do conjunto selecionada.
"""

# ╔═╡ a3923b26-2c44-4c21-a09a-e0a23b6e3263
let
    notas = [4, 6, 8, 9]
    altas = [n for n in notas if n >= 7]
end

# ╔═╡ 4410e4fc-0866-4f83-b1e1-f63056d65c25
md"""
**Aplicação — 8.4**

Uma pessoa declara o critério e a outra classifica as entradas sem executar. Troquem papéis para conferir a lista filtrada.
"""

# ╔═╡ 7e9f7451-4d22-4007-8cb7-4f199e267b69
md"""
### Tarefa 8.5 — Como transformar dados por normalização?

**No Pluto:**
- Subtraia o mínimo.
- Divida pelo intervalo.
- Compare antes e depois.

*Por que importa:* Normalizar mostra que dados podem manter ordem relativa mesmo mudando de escala.
"""

# ╔═╡ 63ddffdf-7d59-4da1-ac8e-a0a1ba2b3fcc
let
    x = [10, 20, 30]
    normalizado = (x .- minimum(x)) ./ (maximum(x)-minimum(x))
end

# ╔═╡ 7a248a7c-ac7b-453a-bb52-5d0edff29aa3
md"""

##### Como somos professores, vamos normalizar umas notas? 

"""


# ╔═╡ 2cc9fd7b-cf16-4422-9cfa-83a25076a7fc
let
    notas = [3, 4, 4, 6, 7, 5]
    normalizado = (notas .- minimum(notas)) ./ (maximum(notas)-minimum(notas))
end

# ╔═╡ 2d749cd8-ed23-4993-8844-ed3e92d421db
let
    notas = [0, 3, 4, 4, 6, 7, 5]
    normalizado = (notas .- minimum(notas)) ./ (maximum(notas)-minimum(notas))
end

# ╔═╡ 690617a4-e835-44c5-b0fb-24691407a786
md"""
**Aplicação — 8.5**

Dividam a previsão e a execução da normalização; troquem papéis ao acrescentar zero. Registrem juntos o que mudou.
"""

# ╔═╡ 9cf5f07c-930b-4be9-8827-95a75dd0e0f3
md"""
### Tarefa 8.6 — Como transformar forma de representação?

**No Pluto:**
- Converta lista para pares.
- Depois para dicionário.
- Compare acessos.

*Por que importa:* A relação nome–valor pode ser vista como tabela, pares ou dicionário, cada qual com um uso.
"""

# ╔═╡ b31b0487-c9a8-43fe-a3d5-2231c271013d
let
    nomes = ["A","B"]
    valores = [10,20]
    pares = collect(zip(nomes,valores))
    dict = Dict(pares)
end

# ╔═╡ 9e445e89-e128-415e-bcd8-8c2f0a2ac53e
md"""

**No Pluto:**

- Converta lista para trios.

- Depois para dicionário.

- Compare acessos.

**O que acontece ???**

"""

# ╔═╡ 4edac575-83b5-489d-b8c1-f3e05235020e
let
    nomes = ["A","B"]
    valores = [10,20]
	simbolos = ["@","#"]
    trios = collect(zip(nomes,valores,simbolos))
	print(trios)
    dict = Dict(trios)
end

# ╔═╡ a2ab7875-a43d-4c75-8f2f-b6343043fe5c
md"""
**Aplicação — 8.6**

Uma pessoa propõe a estrutura chave–valor e a outra investiga os trios. Negociem uma representação que preserve os três campos.
"""

# ╔═╡ c38aa515-f223-4f0c-9936-9f3ed45eabb0
md"""
### Tarefa 8.7 — Como transformar processo em pipeline?

**No Pluto:**
- Aplique várias operações em sequência.
- Nomeie cada etapa.
- Interprete o resultado.

*Por que importa:* A pipeline torna visível que resultados podem surgir de transformações encadeadas.
"""

# ╔═╡ ced88e76-4742-4247-84f1-39315f4b8fdb
let
    dados = [1,2,3,4]
    resultado = sum(dados .^ 2)
end

# ╔═╡ 37cf390a-2828-4bcd-a40c-5ca360944aae
let
    dados = [1,2,3,4]
	print(dados .^ 2)
    resultado = sum(dados .^ 2)
end

# ╔═╡ 12b124bd-7714-4346-93eb-79a57d4436eb
md"""
**Aplicação — 8.7**

Uma pessoa registra a transformação de cada número; a outra acompanha a soma. Troquem papéis e confiram as etapas.
"""

# ╔═╡ a3a4c451-559f-45db-a78d-b183fbbb3b3a
md"""
### Tarefa 8.8 — Como transformar texto em dados?

**No Pluto:**
- Quebre uma frase.
- Conte palavras.
- Interprete frequência.

*Por que importa:* Texto também pode ser modelado como dados, aproximando linguagem e computação.
"""

# ╔═╡ 122647f3-3897-4eed-8c42-ae5cde305f84
let
    frase = "dados viram modelo"
    palavras = split(frase)
    length(palavras)
end

# ╔═╡ 72287a76-c933-41e5-8e5d-5acbc4af195d
md"""
**Aplicação — 8.8**

Escolham uma frase juntos. Uma pessoa faz a contagem manual e a outra usa código; discutam pontuação e repetições.
"""

# ╔═╡ 7dc2a6ed-c17d-4bdd-828d-739452bac316
md"""
### Tarefa 8.9 — Como transformar sem perder sentido?

**No Pluto:**
- Compare dado original e transformado.
- Identifique informação preservada.
- Identifique informação perdida.

*Por que importa:* Transformações devem ser avaliadas pelo que tornam visível e pelo que ocultam.
"""

# ╔═╡ 0fa47197-a8c4-418b-a290-329fabbefa6e
let
    original = [1, 2, 3]
    transformado = original .> 2
end

# ╔═╡ c8011a44-6f95-4a13-8504-d8896d486869
md"""
**Aplicação — 8.9**

Uma pessoa defende a utilidade dos indicadores; a outra identifica informação perdida. Escrevam uma conclusão comum.
"""

# ╔═╡ b33a8388-9831-49ef-9983-33cd3bb5df78
md"""
### Tarefa 8.10 — Como avaliar transformação de dados?

**No Pluto:**
- Peça regra, antes/depois e interpretação.
- Solicite justificativa da escolha.
- Analise adequação.

*Por que importa:* Avaliar transformação é verificar se a nova forma ajuda a responder melhor à pergunta.
"""

# ╔═╡ 8b2cd76a-de6e-4073-b530-1b6f2a43c3fd
let
    registro = (antes="lista", depois="frequencia", regra="contar")
end

# ╔═╡ 2238614f-3722-4fee-a917-0cc76cf9b82b
md"""
**Aplicação — 8.10**

Uma pessoa propõe a transformação e a outra a revisa usando regra, antes/depois e interpretação. Revisem juntos a justificativa.
"""

# ╔═╡ c2a34943-c9e8-4266-8e92-c8cfeadeb93a
md"""
### Tarefa 8.11 — Como traduzir português para espanhol?

**No Pluto:**
- Usar dicionario

"""

# ╔═╡ d414d65e-debd-45b8-be38-9579d1751368
let
	pt_para_esp = Dict("um" => "uno", "dois" => "dos", "três" => "tres")
	println(pt_para_esp["dois"])
	pt_para_esp["quatro"]
end

# ╔═╡ 5c08136b-24f7-4998-9204-5a1d9e88b5a1
md"""

##### Por que deu erro???  Vamos evoluir o código ?

"""


# ╔═╡ 22618dd4-b411-47da-9e5c-e7d6cae14563
md"""
**Aplicação — 8.11**

Uma pessoa escolhe uma chave existente e outra uma ausente. Investigação conjunta: como distinguir esses casos e comunicar o resultado? Troquem papéis na implementação.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.12"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─910e9f5f-cb53-4be7-b45a-6b5174cec715
# ╟─601f4066-6839-4038-950e-8e80bbf246fc
# ╟─7e23d48a-281a-4e5c-8c00-815c4e562b17
# ╟─40ca6f35-8799-4c73-a8b7-ca1da75f0d5d
# ╠═1c0a7cef-68c4-4e00-96f2-8ed9c4346294
# ╠═9570febc-b6cf-4a7b-ba97-e774ce9f5d7c
# ╠═481daae7-d4ef-4318-92c4-af8c36bd97f8
# ╠═9107ab2b-b6b8-4dd4-b045-40cff43a6c4f
# ╟─421dd964-4a4f-4475-9588-b4e99fd1411f
# ╠═127c3fd9-4287-46c7-a714-009b947217d9
# ╟─5e7b3f5a-6b1a-4378-b819-ef1740ed8e2f
# ╟─ad277bf4-6dca-417f-8121-78ccfe2d9ddf
# ╟─2bfb01a8-9a11-467a-ae3a-67fa9537cbb5
# ╠═2ed202f9-d6a6-4035-9d70-441d020b1cb1
# ╠═d1481488-1c56-47b6-825a-8b49909f97a2
# ╟─cc74c95b-2117-45ff-8189-79ba16d766c1
# ╟─8a1355c5-8e36-42aa-bfa5-0fcabb7d9951
# ╠═70f28559-16e4-4cef-bffa-57dc6726a55e
# ╟─460bb2e8-37b6-4949-a704-a4bb431a6c3b
# ╠═7bd3766e-e0b9-4111-830c-b5bd24745346
# ╟─2eba0599-84b0-4616-a443-108e4f7d5fec
# ╟─a37d0f1e-51c5-4479-98ac-020efcf5ffae
# ╠═bb186749-42c6-4be8-8d09-873085045714
# ╟─28ef554f-4fb9-428b-a600-a5f38c1efaf1
# ╟─68ccfbc4-8414-4acf-a4ac-af052b4c146c
# ╠═a3923b26-2c44-4c21-a09a-e0a23b6e3263
# ╟─4410e4fc-0866-4f83-b1e1-f63056d65c25
# ╟─7e9f7451-4d22-4007-8cb7-4f199e267b69
# ╠═63ddffdf-7d59-4da1-ac8e-a0a1ba2b3fcc
# ╟─7a248a7c-ac7b-453a-bb52-5d0edff29aa3
# ╠═2cc9fd7b-cf16-4422-9cfa-83a25076a7fc
# ╠═2d749cd8-ed23-4993-8844-ed3e92d421db
# ╟─690617a4-e835-44c5-b0fb-24691407a786
# ╟─9cf5f07c-930b-4be9-8827-95a75dd0e0f3
# ╠═b31b0487-c9a8-43fe-a3d5-2231c271013d
# ╟─9e445e89-e128-415e-bcd8-8c2f0a2ac53e
# ╠═4edac575-83b5-489d-b8c1-f3e05235020e
# ╟─a2ab7875-a43d-4c75-8f2f-b6343043fe5c
# ╟─c38aa515-f223-4f0c-9936-9f3ed45eabb0
# ╠═ced88e76-4742-4247-84f1-39315f4b8fdb
# ╠═37cf390a-2828-4bcd-a40c-5ca360944aae
# ╟─12b124bd-7714-4346-93eb-79a57d4436eb
# ╟─a3a4c451-559f-45db-a78d-b183fbbb3b3a
# ╠═122647f3-3897-4eed-8c42-ae5cde305f84
# ╟─72287a76-c933-41e5-8e5d-5acbc4af195d
# ╟─7dc2a6ed-c17d-4bdd-828d-739452bac316
# ╠═0fa47197-a8c4-418b-a290-329fabbefa6e
# ╟─c8011a44-6f95-4a13-8504-d8896d486869
# ╟─b33a8388-9831-49ef-9983-33cd3bb5df78
# ╠═8b2cd76a-de6e-4073-b530-1b6f2a43c3fd
# ╟─2238614f-3722-4fee-a917-0cc76cf9b82b
# ╟─c2a34943-c9e8-4266-8e92-c8cfeadeb93a
# ╠═d414d65e-debd-45b8-be38-9579d1751368
# ╟─5c08136b-24f7-4998-9204-5a1d9e88b5a1
# ╟─22618dd4-b411-47da-9e5c-e7d6cae14563
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
