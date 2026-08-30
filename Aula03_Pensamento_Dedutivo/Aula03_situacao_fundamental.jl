### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Balas de Leandro — transformação desconhecida

**Situação-problema:**

Leandro tinha 10 balas. Lucas, seu irmão, pegou algumas balas escondidas de Leandro. Quando Leandro foi comer suas balas só restavam 6. Quantas balas Lucas comeu?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

Aqui o estado inicial (10) e o estado final (6) são conhecidos, mas a **transformação** é a incógnita. Em Julia, isolamos a transformação subtraindo o estado final do inicial.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
estado_inicial = 10
estado_final = 6
balas_que_lucas_comeu = estado_inicial - estado_final

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
