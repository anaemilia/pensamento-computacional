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
**Pensamento Computacional em jogo — dois algoritmos, mesma resposta, complexidades diferentes.** Somar termo a termo tem custo fixo, sempre reescrito à mão. Usar `sum` sobre um array generaliza para qualquer quantidade de cores sem reescrever o código.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdBorrachasAzuis = 4

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBorrachasAmarelas = 3

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdBorrachasVerdes = 2

# ╔═╡ 00000006-0000-4000-8000-000000000000
qtdBorrachasVermelhas = 5

# ╔═╡ 00000007-0000-4000-8000-000000000000
qtdTotalPorSomaDireta = qtdBorrachasAzuis + qtdBorrachasAmarelas + qtdBorrachasVerdes + qtdBorrachasVermelhas

# ╔═╡ 00000008-0000-4000-8000-000000000000
qtdBorrachasPorCor = [qtdBorrachasAzuis, qtdBorrachasAmarelas, qtdBorrachasVerdes, qtdBorrachasVermelhas]

# ╔═╡ 00000009-0000-4000-8000-000000000000
qtdTotalComArray = sum(qtdBorrachasPorCor)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
# ╠═00000008-0000-4000-8000-000000000000
# ╠═00000009-0000-4000-8000-000000000000
