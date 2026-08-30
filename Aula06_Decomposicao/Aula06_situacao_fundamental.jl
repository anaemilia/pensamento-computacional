### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas azuis e vermelhas de Paulo — composição, parte desconhecida

**Situação-problema:**

Paulo tem 17 bolas azuis e vermelhas. Se ele tem 11 bolas azuis, quantas bolas vermelhas ele tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

O todo (17) e uma parte (11 azuis) são conhecidos; a outra parte é a incógnita. Decompomos o todo subtraindo a parte conhecida.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
total_de_bolas = 17
bolas_azuis = 11
bolas_vermelhas = total_de_bolas - bolas_azuis

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
