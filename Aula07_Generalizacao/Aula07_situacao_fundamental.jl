### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas de Paulo e José — comparação, referido desconhecido

**Situação-problema:**

Paulo tem seis bolas. José tem oito bolas a mais que Paulo. Quantas bolas tem José?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

É uma **comparação**: o referente (Paulo, 6) e a diferença (8 a mais) são conhecidos; o referido (José) é a incógnita. Generalizamos a regra: referido = referente + diferença.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
bolas_de_paulo = 6
diferenca = 8
bolas_de_jose = bolas_de_paulo + diferenca

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
