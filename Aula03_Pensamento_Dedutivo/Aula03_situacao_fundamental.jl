### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Balas de Leandro — pensamento dedutivo

**Situação-problema:**

Leandro tinha 10 balas. Lucas, seu irmão, pegou algumas balas escondidas de Leandro. Quando Leandro foi comer suas balas só restavam 6. Quantas balas Lucas comeu?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — deduzir um caso a partir de uma regra geral.** Já sabemos a regra *estado_final = estado_inicial − transformação*. Pensamento dedutivo é aplicar essa regra já conhecida a um caso novo para descobrir a transformação escondida: `10 − transformação = 6`.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
estado_inicial = 10
estado_final = 6

# regra geral já conhecida, aplicada dedutivamente a este caso:
transformacao(inicial, final) = inicial - final
balas_que_lucas_comeu = transformacao(estado_inicial, estado_final)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
