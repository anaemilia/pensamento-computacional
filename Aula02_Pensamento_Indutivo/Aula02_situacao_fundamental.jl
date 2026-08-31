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
**Pensamento Computacional em jogo — induzir a regra geral a partir de um caso.** Resolvendo este exemplo (25 − 18), o aluno percebe um padrão: *dinheiro que sobra = dinheiro que tinha − dinheiro gasto*. É esse salto do caso particular para a regra geral que o pensamento indutivo pratica.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
dinheiro_inicial = 25
gasto_na_feira = 18
dinheiro_final = dinheiro_inicial - gasto_na_feira

# regra geral induzida a partir deste caso:
sobra(inicial, gasto) = inicial - gasto
sobra(dinheiro_inicial, gasto_na_feira)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
