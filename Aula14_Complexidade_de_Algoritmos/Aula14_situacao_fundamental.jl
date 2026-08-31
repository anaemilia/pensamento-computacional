### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Borrachas de Marina — complexidade de algoritmos

**Situação-problema:**

Marina tem quatro borrachas azuis, três amarelas, duas verdes e cinco vermelhas. Quantas borrachas Marina tem ao todo?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — dois algoritmos, mesma resposta, complexidades diferentes.** Somar termo a termo (`+ + +`) tem custo fixo, sempre a mesma quantidade de operações escritas à mão. Usar `sum` sobre um array generaliza para qualquer quantidade de cores sem reescrever o código — uma solução que **escala melhor**.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
azuis, amarelas, verdes, vermelhas = 4, 3, 2, 5

# algoritmo 1: soma direta, uma operação por cor
total_soma_direta = azuis + amarelas + verdes + vermelhas

# algoritmo 2: generaliza para qualquer número de cores
total_com_array = sum([azuis, amarelas, verdes, vermelhas])

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
