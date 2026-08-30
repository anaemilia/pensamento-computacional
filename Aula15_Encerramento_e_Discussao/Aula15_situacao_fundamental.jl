### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bonecas de Julia e Maria — comparação em duas etapas

**Situação-problema:**

Julia tem 3 bonecas a mais que Maria. A mãe de Maria comprou mais 5 bonecas para ela. Com quantas bonecas Maria ficou a mais que Julia?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

Encerramento: combina **comparação** (diferença inicial) com uma **transformação** (a compra), pedindo a nova diferença — encadeando os conceitos vistos ao longo do semestre.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
diferenca_inicial_julia_a_mais = 3
compra_de_maria = 5
nova_diferenca_maria_a_mais = compra_de_maria - diferenca_inicial_julia_a_mais

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
