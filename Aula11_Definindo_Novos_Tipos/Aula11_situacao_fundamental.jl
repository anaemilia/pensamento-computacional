### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Chocolates de Geisa — duas transformações sucessivas

**Situação-problema:**

Geisa tinha uma caixa com 35 chocolates. Comeu 2 ontem e 5 hoje. Quantos chocolates ainda tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

Duas transformações negativas sucessivas aplicadas ao mesmo estado inicial. Definimos cada transformação como sua própria variável antes de compor o resultado final.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
estado_inicial = 35
transformacao_1 = 2
transformacao_2 = 5
estado_final = estado_inicial - transformacao_1 - transformacao_2

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
