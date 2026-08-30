### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Claudia e Joana — comparação, referente desconhecido

**Situação-problema:**

Claudia tem 15 reais. Ela tem 7 reais a mais que Joana. Quantos reais Joana tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

Referido (Claudia, 15) e diferença (7) são conhecidos; o **referente** (Joana) é a incógnita — subtrai-se a diferença do referido.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
dinheiro_de_claudia = 15
diferenca = 7
dinheiro_de_joana = dinheiro_de_claudia - diferenca

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
