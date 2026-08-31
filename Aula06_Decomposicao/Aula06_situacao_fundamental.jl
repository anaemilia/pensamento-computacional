### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas azuis e vermelhas de Paulo — decomposição

**Situação-problema:**

Paulo tem 17 bolas azuis e vermelhas. Se ele tem 11 bolas azuis, quantas bolas vermelhas ele tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — decompor o todo em partes.** O "todo" (17 bolas) é decomposto em duas partes conhecidas separadamente: a parte azul e a parte vermelha, cada uma em sua própria célula.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdBolasTotal = 17   # o todo

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBolasAzuis = 11   # parte 1, conhecida

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdBolasVermelhas = qtdBolasTotal - qtdBolasAzuis   # parte 2, decomposta do todo

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
