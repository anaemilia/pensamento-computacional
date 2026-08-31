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
**Pensamento Computacional em jogo — decompor, abstrair e compor a solução final.** Decompomos o problema em duas partes conhecidas, cada uma em sua célula, e compomos o resultado final somando-as com o sinal certo.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
diferencaInicialDeJuliaAMais = 3   # decomposição: parte 1

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBonecasCompradasParaMaria = 5   # decomposição: parte 2

# ╔═╡ 00000005-0000-4000-8000-000000000000
novaDiferencaDeMariaAMais = qtdBonecasCompradasParaMaria - diferencaInicialDeJuliaAMais   # composição final

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
