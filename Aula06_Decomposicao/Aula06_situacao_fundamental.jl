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
**Pensamento Computacional em jogo — decompor o todo em partes.** Decomposição é quebrar um problema complexo em pedaços menores e tratáveis. Aqui, o "todo" (17 bolas) é decomposto em duas partes: azuis (conhecida) e vermelhas (a calcular).

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# a decomposição é modelada como uma função que separa o todo em duas partes
decompor(total, parte_conhecida) = (parte_conhecida, total - parte_conhecida)

total_de_bolas = 17
bolas_azuis = 11
(azuis, bolas_vermelhas) = decompor(total_de_bolas, bolas_azuis)
bolas_vermelhas

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
