### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Claudia e Joana — abstração e especialização

**Situação-problema:**

Claudia tem 15 reais. Ela tem 7 reais a mais que Joana. Quantos reais Joana tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — abstrair uma regra e depois especializá-la.** Abstraímos a regra geral de comparação `referente = referido - diferenca` (ignorando nomes e valores específicos). Depois a *especializamos*, aplicando-a a Claudia e Joana.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# abstração: regra geral, válida para qualquer comparação "a mais que"
referente(referido, diferenca) = referido - diferenca

# especialização: aplicando a regra abstrata a este caso concreto
dinheiro_de_claudia = 15
diferenca = 7
dinheiro_de_joana = referente(dinheiro_de_claudia, diferenca)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
