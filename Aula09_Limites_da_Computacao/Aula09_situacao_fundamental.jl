### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Ingrid e Ligianne — comparação, referido desconhecido

**Situação-problema:**

Ingrid tem 12 reais a mais que Ligianne. Se Ligianne possui 27 reais, quantos reais Ingrid tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

Referente (Ligianne, 27) e diferença (12) são conhecidos; o referido (Ingrid) é a incógnita — soma-se a diferença ao referente.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
dinheiro_de_ligianne = 27
diferenca = 12
dinheiro_de_ingrid = dinheiro_de_ligianne + diferenca

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
