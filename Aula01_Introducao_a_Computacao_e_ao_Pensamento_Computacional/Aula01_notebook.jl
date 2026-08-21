### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 4f1fcb0e-d31e-4f5d-aac6-10216bc4ca02
md"""
# Aula 01 — Introdução à Computação e ao Pensamento Computacional

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 54489194-0221-42c9-9d1f-acd66550dc96
md"""
### Tarefa 1.1 — O que é computar quando usamos Julia no Pluto?

**No Pluto:**
- Execute uma expressão simples.
- Observe entrada, processamento e saída.
- Explique o que o computador fez e o que ele não entendeu.

*Por que importa:* A primeira tarefa separa cálculo de compreensão: o computador executa operações, mas a turma interpreta o sentido da ação.
"""

# ╔═╡ ccd4f977-aa6a-4473-9ded-44a5cdeb7ae0
let
    2 + 3
    5 * 4
    2^5
end

# ╔═╡ 7eb773d2-0797-480d-aa46-7e8a8bf788d0
md"""
### Tarefa 1.2 — Como uma variável transforma um número em conceito?

**No Pluto:**
- Nomeie valores com significado.
- Altere o nome ou o valor.
- Discuta como o nome orienta a leitura do modelo.

*Por que importa:* A variável deixa de ser apenas armazenamento e passa a indicar uma relação conceitual entre valor, papel e contexto.
"""

# ╔═╡ 00b88597-6955-41ef-a3b0-5fab6260826e
let
    idade = 35
    anos = 5
    idade_futura = idade + anos
end

# ╔═╡ bbb3b6e2-e1ac-431e-8162-685496eca6bc
md"""
### Tarefa 1.3 — Como uma lista torna visível uma coleção de casos?

**No Pluto:**
- Crie uma lista de valores.
- Observe quantidade e ordem.
- Pergunte o que muda se a ordem mudar.

*Por que importa:* A lista aproxima teoria de conjuntos e estrutura computacional: valores aparecem como coleção e como sequência indexada.
"""

# ╔═╡ adc31d77-e159-43cb-a909-93fa80d23fc2
let
    dados = [1, 2, 3, 4]
    length(dados)
    dados[1]
end

# ╔═╡ 53b7343d-949e-4a29-9b5e-ecec1d060f86
md"""
### Tarefa 1.4 — Como o Pluto ajuda a ver dependências?

**No Pluto:**
- Separe as células em dados, regra e saída.
- Mude um valor inicial.
- Observe a atualização das células dependentes.

*Por que importa:* A reatividade torna explícita a dependência entre variáveis, permitindo comparar estados do mesmo modelo.
"""

# ╔═╡ e0de834c-66b5-4573-9996-394104d52ecd
let
    valor = 100
    taxa = 0.1
    final = valor * (1 + taxa)
end

# ╔═╡ 81760920-a056-4da4-9aa2-91f9dc507bf9
md"""
### Tarefa 1.5 — Como texto e código podem coexistir na mesma explicação?

**No Pluto:**
- Use uma célula Markdown.
- Mostre valores calculados no texto.
- Peça que a turma explique a saída.

*Por que importa:* O texto integrado ao código aproxima cálculo, comunicação e justificativa conceitual.
"""

# ╔═╡ 052a82e8-7783-4505-8ae6-b34562385ed6
let
    media = 7.5
    md"""A média foi **$media**."""
end

# ╔═╡ 81f1469f-1165-49a1-9195-471c8dedfc05
md"""
### Tarefa 1.6 — O que muda quando a saída vira tabela?

**No Pluto:**
- Calcule quadrados.
- Agrupe entrada e saída.
- Interprete a correspondência em pares.

*Por que importa:* A tabela de pares faz aparecer a relação funcional que ficaria escondida em uma lista de resultados.
"""

# ╔═╡ 8e1710bb-008f-4b36-b0a3-bf5e821d5563
let
    dados = [1, 2, 3, 4]
    quadrados = dados .^ 2
    collect(zip(dados, quadrados))
end

# ╔═╡ c47192a3-1aee-4fa7-afa0-f6610e83b257
md"""
### Tarefa 1.7 — Como uma função sintetiza uma ideia computacional?

**No Pluto:**
- Transforme uma conta repetida em função.
- Teste diferentes entradas.
- Compare os resultados.

*Por que importa:* A função introduz a ideia de regra reutilizável e permite discutir domínio, imagem e transformação.
"""

# ╔═╡ 05812f4e-f084-421f-8851-84c4f070cb61
let
    dobro(x) = 2x
    dobro(4)
    dobro(10)
end

# ╔═╡ 0f368a1b-f776-488e-97f3-c4604c48fcab
md"""
### Tarefa 1.8 — Como o computador representa decisões?

**No Pluto:**
- Use uma condição simples.
- Teste dois casos.
- Discuta a regra antes de executar.

*Por que importa:* A decisão computacional mostra que regras precisam ser formuladas, testadas e interpretadas.
"""

# ╔═╡ 4ec7a134-eff5-467a-ad5f-4dbc602365fe
let
    nota = 6.5
    situacao = nota >= 7 ? "aprovado" : "rever"
end

# ╔═╡ f18a603b-30c7-47a0-8325-86e051bd9ac0
md"""
### Tarefa 1.9 — Como um erro pode virar dado de aprendizagem?

**No Pluto:**
- Altere uma variável inexistente.
- Observe a mensagem de erro.
- Explique que relação estava faltando.

*Por que importa:* O erro revela dependências ausentes e ajuda a discutir a estrutura necessária para o modelo funcionar.
"""

# ╔═╡ 53b20c08-d2e7-49bd-a6fa-1c422ec857af
let
    x = 10
    y = x + z
end

# ╔═╡ 06ccf1dc-8d17-4e4f-bdb3-d1471d1d01a6
md"""
### Tarefa 1.10 — Como avaliar a primeira experiência com Pluto?

**No Pluto:**
- Peça um registro curto.
- Liste o que ficou visível.
- Classifique uma dificuldade como dado, regra ou saída.

*Por que importa:* A avaliação inicial observa como o estudante descreve e reorganiza a tarefa, não apenas se o código executou.
"""

# ╔═╡ 7908fe19-8929-4893-9de5-bac2c59bfa2b
let
    reflexao = "Expliquei a relação entre dados e saída"
    length(reflexao)
end

# ╔═╡ Cell order:
# ╟─4f1fcb0e-d31e-4f5d-aac6-10216bc4ca02
# ╟─54489194-0221-42c9-9d1f-acd66550dc96
# ╠═ccd4f977-aa6a-4473-9ded-44a5cdeb7ae0
# ╟─7eb773d2-0797-480d-aa46-7e8a8bf788d0
# ╠═00b88597-6955-41ef-a3b0-5fab6260826e
# ╟─bbb3b6e2-e1ac-431e-8162-685496eca6bc
# ╠═adc31d77-e159-43cb-a909-93fa80d23fc2
# ╟─53b7343d-949e-4a29-9b5e-ecec1d060f86
# ╠═e0de834c-66b5-4573-9996-394104d52ecd
# ╟─81760920-a056-4da4-9aa2-91f9dc507bf9
# ╠═052a82e8-7783-4505-8ae6-b34562385ed6
# ╟─81f1469f-1165-49a1-9195-471c8dedfc05
# ╠═8e1710bb-008f-4b36-b0a3-bf5e821d5563
# ╟─c47192a3-1aee-4fa7-afa0-f6610e83b257
# ╠═05812f4e-f084-421f-8851-84c4f070cb61
# ╟─0f368a1b-f776-488e-97f3-c4604c48fcab
# ╠═4ec7a134-eff5-467a-ad5f-4dbc602365fe
# ╟─f18a603b-30c7-47a0-8325-86e051bd9ac0
# ╠═53b20c08-d2e7-49bd-a6fa-1c422ec857af
# ╟─06ccf1dc-8d17-4e4f-bdb3-d1471d1d01a6
# ╠═7908fe19-8929-4893-9de5-bac2c59bfa2b
