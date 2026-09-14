### A Pluto.jl notebook ###
# v0.20.24

using Markdown
using InteractiveUtils

# ╔═╡ d15e5ccb-4fcd-43fc-8482-2ae2ef5e82b4
md"""
## Versão: Sem resposta

Adaptada de [https://pluto.land/n/dh74bbcm](https://pluto.land/n/dh74bbcm). Mantém a sequência completa 8.1–8.11, incluindo os desafios de depuração.

Os exemplos resolvidos foram substituídos por espaços de resposta. Os trechos com erros para investigação foram mantidos como enunciados de depuração.
"""

# ╔═╡ 601f4066-6839-4038-950e-8e80bbf246fc
md"""
# Aula 08 — Técnicas de construção de algoritmos: transformação

Notebook Pluto com as 11 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e espaços de resolução e desafios de depuração para discutir com a turma.

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
##### Comece com um escalar

Pesquise a regra Celsius–Fahrenheit, registre sua fonte e preveja o resultado para 25 °C. Depois teste 30 °C e a lista [25, 28, 30].
"""

# ╔═╡ 1c0a7cef-68c4-4e00-96f2-8ed9c4346294
# Escreva aqui sua resolução para a tarefa 8.1.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 9570febc-b6cf-4a7b-ba97-e774ce9f5d7c
# Escreva aqui sua resolução para a tarefa 8.1.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 481daae7-d4ef-4318-92c4-af8c36bd97f8
# Escreva aqui sua resolução para a tarefa 8.1.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 9107ab2b-b6b8-4dd4-b045-40cff43a6c4f


# ╔═╡ 421dd964-4a4f-4475-9588-b4e99fd1411f
md"""

##### Agora vamos usar listas: 

"""

# ╔═╡ 127c3fd9-4287-46c7-a714-009b947217d9
# Escreva aqui sua resolução para a tarefa 8.1.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ a6080d78-1c51-433a-ad3b-8452dda5ed20
md"""
**Aplicação — 8.1**

Uma turma registrou temperaturas de 25, 28 e 30 °C. Como apresentar os mesmos registros a alguém que usa Fahrenheit? Comece por uma temperatura e depois use a lista.
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
# Escreva aqui sua resolução para a tarefa 8.2.
# Registre a previsão antes de executar e explique o resultado.
nothing

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
# Escreva aqui sua resolução para a tarefa 8.2.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 460bb2e8-37b6-4949-a704-a4bb431a6c3b
md"""

##### Vamos 4 médias e coloca-las na lista medias ? 

"""


# ╔═╡ 7bd3766e-e0b9-4111-830c-b5bd24745346
# Escreva aqui sua resolução para a tarefa 8.2.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ f95cdbb6-9e29-4afb-b641-6bebb0a1ea82
md"""
**Aplicação — 8.2**

A turma quer agrupar médias pela mesma regra do exemplo. O que deixa de aparecer quando uma média vira apenas uma categoria? Investigue a conta antes de confiar nela.
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
# Escreva aqui sua resolução para a tarefa 8.3.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 1ed5c923-9613-48f7-9b73-2a5f488e9b71
md"""
**Aplicação — 8.3**

Numa votação fictícia, as escolhas foram A, B, A, C, A. Como organizar as respostas sem perder a quantidade de votos de cada opção?
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
# Escreva aqui sua resolução para a tarefa 8.4.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 6381c66c-bbd2-4ca9-93e9-a13bcf856846
md"""
**Aplicação — 8.4**

Com os valores 4, 6, 8 e 9, selecione os que atendem ao critério do exemplo. Explique por que cada valor entra ou fica fora.
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
# Escreva aqui sua resolução para a tarefa 8.5.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 7a248a7c-ac7b-453a-bb52-5d0edff29aa3
md"""

##### Como somos professores, vamos normalizar umas notas? 

"""


# ╔═╡ 2cc9fd7b-cf16-4422-9cfa-83a25076a7fc
# Escreva aqui sua resolução para a tarefa 8.5.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 2d749cd8-ed23-4993-8844-ed3e92d421db
# Escreva aqui sua resolução para a tarefa 8.5.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ d9424e57-7795-4984-8625-358af12de0de
md"""
**Aplicação — 8.5**

Compare as listas de notas dos exemplos antes e depois da normalização. O que acontece quando acrescentamos zero? Faça uma tabela em papel antes de programar.
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
# Escreva aqui sua resolução para a tarefa 8.6.
# Registre a previsão antes de executar e explique o resultado.
nothing

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

# ╔═╡ 7c0d8c04-eaae-45e4-aafb-77bd0911dd5c
md"""
**Aplicação — 8.6**

Associe os nomes A e B aos valores 10 e 20. Compare procurar um nome numa lista de pares e num dicionário. Investigue o desafio dos trios.
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
# Escreva aqui sua resolução para a tarefa 8.7.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 37cf390a-2828-4bcd-a40c-5ca360944aae
# Escreva aqui sua resolução para a tarefa 8.7.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 599c3f84-6950-49a9-9914-d74a5ff2fba4
md"""
**Aplicação — 8.7**

Partindo de 1, 2, 3 e 4, desenhe as etapas: entrada, transformação de cada número e soma. Registre o resultado de cada etapa.
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
# Escreva aqui sua resolução para a tarefa 8.8.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 63a7ddda-d020-4c61-9d66-ec5835a68df8
md"""
**Aplicação — 8.8**

Escolha uma frase curta da turma. Separe as palavras, conte-as e discuta como pontuação e repetição afetam a contagem.
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
# Escreva aqui sua resolução para a tarefa 8.9.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ ff284452-50ab-4729-bc3d-35f4572051f9
md"""
**Aplicação — 8.9**

Compare os números 1, 2 e 3 com as respostas verdadeiro/falso produzidas pela regra. Seria possível recuperar cada número apenas dessas respostas?
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
# Escreva aqui sua resolução para a tarefa 8.10.
# Registre a previsão antes de executar e explique o resultado.
nothing

# ╔═╡ 13d62560-4f21-4478-89f7-2043c6aa6dbd
md"""
**Aplicação — 8.10**

Escolha uma transformação já explorada. Registre a pergunta, os dados, a regra, o antes/depois e uma justificativa.
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


# ╔═╡ a8e604a2-05bc-471c-876a-9a83271e5204
md"""
**Aplicação — 8.11**

Explore o pequeno dicionário português–espanhol. Explique o que acontece quando uma palavra não está cadastrada e proponha como lidar com isso.
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
# ╟─d15e5ccb-4fcd-43fc-8482-2ae2ef5e82b4
# ╟─601f4066-6839-4038-950e-8e80bbf246fc
# ╟─7e23d48a-281a-4e5c-8c00-815c4e562b17
# ╟─40ca6f35-8799-4c73-a8b7-ca1da75f0d5d
# ╠═1c0a7cef-68c4-4e00-96f2-8ed9c4346294
# ╠═9570febc-b6cf-4a7b-ba97-e774ce9f5d7c
# ╠═481daae7-d4ef-4318-92c4-af8c36bd97f8
# ╠═9107ab2b-b6b8-4dd4-b045-40cff43a6c4f
# ╟─421dd964-4a4f-4475-9588-b4e99fd1411f
# ╠═127c3fd9-4287-46c7-a714-009b947217d9
# ╟─a6080d78-1c51-433a-ad3b-8452dda5ed20
# ╟─ad277bf4-6dca-417f-8121-78ccfe2d9ddf
# ╟─2bfb01a8-9a11-467a-ae3a-67fa9537cbb5
# ╠═2ed202f9-d6a6-4035-9d70-441d020b1cb1
# ╠═d1481488-1c56-47b6-825a-8b49909f97a2
# ╟─cc74c95b-2117-45ff-8189-79ba16d766c1
# ╟─8a1355c5-8e36-42aa-bfa5-0fcabb7d9951
# ╠═70f28559-16e4-4cef-bffa-57dc6726a55e
# ╟─460bb2e8-37b6-4949-a704-a4bb431a6c3b
# ╠═7bd3766e-e0b9-4111-830c-b5bd24745346
# ╟─f95cdbb6-9e29-4afb-b641-6bebb0a1ea82
# ╟─a37d0f1e-51c5-4479-98ac-020efcf5ffae
# ╠═bb186749-42c6-4be8-8d09-873085045714
# ╟─1ed5c923-9613-48f7-9b73-2a5f488e9b71
# ╟─68ccfbc4-8414-4acf-a4ac-af052b4c146c
# ╠═a3923b26-2c44-4c21-a09a-e0a23b6e3263
# ╟─6381c66c-bbd2-4ca9-93e9-a13bcf856846
# ╟─7e9f7451-4d22-4007-8cb7-4f199e267b69
# ╠═63ddffdf-7d59-4da1-ac8e-a0a1ba2b3fcc
# ╟─7a248a7c-ac7b-453a-bb52-5d0edff29aa3
# ╠═2cc9fd7b-cf16-4422-9cfa-83a25076a7fc
# ╠═2d749cd8-ed23-4993-8844-ed3e92d421db
# ╟─d9424e57-7795-4984-8625-358af12de0de
# ╟─9cf5f07c-930b-4be9-8827-95a75dd0e0f3
# ╠═b31b0487-c9a8-43fe-a3d5-2231c271013d
# ╟─9e445e89-e128-415e-bcd8-8c2f0a2ac53e
# ╠═4edac575-83b5-489d-b8c1-f3e05235020e
# ╟─7c0d8c04-eaae-45e4-aafb-77bd0911dd5c
# ╟─c38aa515-f223-4f0c-9936-9f3ed45eabb0
# ╠═ced88e76-4742-4247-84f1-39315f4b8fdb
# ╠═37cf390a-2828-4bcd-a40c-5ca360944aae
# ╟─599c3f84-6950-49a9-9914-d74a5ff2fba4
# ╟─a3a4c451-559f-45db-a78d-b183fbbb3b3a
# ╠═122647f3-3897-4eed-8c42-ae5cde305f84
# ╟─63a7ddda-d020-4c61-9d66-ec5835a68df8
# ╟─7dc2a6ed-c17d-4bdd-828d-739452bac316
# ╠═0fa47197-a8c4-418b-a290-329fabbefa6e
# ╟─ff284452-50ab-4729-bc3d-35f4572051f9
# ╟─b33a8388-9831-49ef-9983-33cd3bb5df78
# ╠═8b2cd76a-de6e-4073-b530-1b6f2a43c3fd
# ╟─13d62560-4f21-4478-89f7-2043c6aa6dbd
# ╟─c2a34943-c9e8-4266-8e92-c8cfeadeb93a
# ╠═d414d65e-debd-45b8-be38-9579d1751368
# ╟─5c08136b-24f7-4998-9204-5a1d9e88b5a1
# ╟─a8e604a2-05bc-471c-876a-9a83271e5204
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
