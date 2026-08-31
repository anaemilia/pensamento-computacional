### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Ingrid e Ligianne — limites da computação

**Situação-problema:**

Ingrid tem 12 reais a mais que Ligianne. Se Ligianne possui 27 reais, quantos reais Ingrid tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — o que o computador calcula vs. o que ele entende.** O código abaixo calcula `27 + 12 = 39` perfeitamente. Mas o computador não sabe o que é "dinheiro", "ganhar" ou por que a soma resolve o problema — isso é interpretação humana. Executar é fácil; compreender o sentido é um limite da computação.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
dinheiro_de_ligianne = 27
diferenca = 12
dinheiro_de_ingrid = dinheiro_de_ligianne + diferenca
# o computador executa isto sem "entender" o que é dinheiro ou comparação
dinheiro_de_ingrid

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
