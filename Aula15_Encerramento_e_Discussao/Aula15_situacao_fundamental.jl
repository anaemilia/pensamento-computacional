### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bonecas de Julia e Maria — encerramento: juntando os conceitos

**Situação-problema:**

Julia tem 3 bonecas a mais que Maria. A mãe de Maria comprou mais 5 bonecas para ela. Com quantas bonecas Maria ficou a mais que Julia?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — decompor, abstrair e compor a solução final.** Encerramos o semestre decompondo o problema em duas partes (a diferença inicial e a transformação), abstraindo cada uma numa variável, e compondo o resultado final — o mesmo processo praticado aula a aula.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# decompomos o problema em duas funções menores...
diferenca_inicial(julia_a_mais) = julia_a_mais
transformacao(compra) = compra

# ...e as compomos numa função final, juntando os conceitos do semestre
nova_diferenca(julia_a_mais, compra) = transformacao(compra) - diferenca_inicial(julia_a_mais)

nova_diferenca_maria_a_mais = nova_diferenca(3, 5)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
