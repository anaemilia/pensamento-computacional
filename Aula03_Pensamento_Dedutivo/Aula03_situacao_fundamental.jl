### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Balas de Leandro — pensamento dedutivo

**Situação-problema:**

Leandro tinha 10 balas. Lucas, seu irmão, pegou algumas balas escondidas de Leandro. Quando Leandro foi comer suas balas só restavam 6. Quantas balas Lucas comeu?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — deduzir um caso a partir de uma regra geral.** Já conhecemos a regra *transformação = estado inicial − estado final*. Pensamento dedutivo é aplicar essa regra já sabida a este caso novo.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdBalasDeLeandroAntes = 10

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBalasDeLeandroDepois = 6

# ╔═╡ 00000005-0000-4000-8000-000000000000
# regra geral já conhecida, aplicada dedutivamente a este caso
calcularTransformacao(estadoInicial, estadoFinal) = estadoInicial - estadoFinal

# ╔═╡ 00000006-0000-4000-8000-000000000000
qtdBalasComidasPorLucas = calcularTransformacao(qtdBalasDeLeandroAntes, qtdBalasDeLeandroDepois)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
