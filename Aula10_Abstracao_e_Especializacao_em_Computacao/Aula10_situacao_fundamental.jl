### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Claudia e Joana — abstração e especialização

**Situação-problema:**

Claudia tem 15 reais. Ela tem 7 reais a mais que Joana. Quantos reais Joana tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — abstrair uma regra e depois especializá-la.** Primeiro escrevemos a regra geral, sem valores específicos (abstração). Depois a aplicamos a Claudia e Joana (especialização).

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
dinheiroDeClaudia = 15

# ╔═╡ 00000004-0000-4000-8000-000000000000
diferencaDeClaudiaAMais = 7

# ╔═╡ 00000005-0000-4000-8000-000000000000
# abstração: regra geral, válida para qualquer comparação "a mais que"
calcularReferente(qtdDoReferido, diferenca) = qtdDoReferido - diferenca

# ╔═╡ 00000006-0000-4000-8000-000000000000
dinheiroDeJoana = calcularReferente(dinheiroDeClaudia, diferencaDeClaudiaAMais)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
