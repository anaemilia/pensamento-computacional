### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Feira de Maria — pensamento indutivo

**Situação-problema:**

Maria foi fazer compras na feira com R$ 25,00. Gastou R$ 18,00 comprando frutas e verduras. Com quantos reais Maria ficou após a feira?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — induzir a regra geral a partir de um caso.** Primeiro resolvemos o caso concreto. Depois, observando o padrão, escrevemos a regra geral que ele revela: *sobra = valor inicial − valor gasto*.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
dinheiroInicialNaFeira = 25

# ╔═╡ 00000004-0000-4000-8000-000000000000
gastoComFrutasEVerduras = 18

# ╔═╡ 00000005-0000-4000-8000-000000000000
dinheiroFinalDeMaria = dinheiroInicialNaFeira - gastoComFrutasEVerduras

# ╔═╡ 00000006-0000-4000-8000-000000000000
# regra geral induzida a partir do caso acima
sobraDoDinheiro(valorInicial, valorGasto) = valorInicial - valorGasto

# ╔═╡ 00000007-0000-4000-8000-000000000000
sobraDoDinheiro(dinheiroInicialNaFeira, gastoComFrutasEVerduras)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
