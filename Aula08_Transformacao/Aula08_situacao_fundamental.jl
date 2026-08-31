### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Carrinhos de Marcus e Jardel — transformação

**Situação-problema:**

Marcus e Jardel colecionam carrinhos em miniatura. Marcus tem 23 carrinhos e Jardel tem 11 carrinhos. Quantos carrinhos a menos Jardel tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — a diferença como transformação entre dois estados.** Marcus e Jardel são dois "estados"; calculamos a transformação que leva de um ao outro.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdCarrinhosDeMarcus = 23   # estado 1

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdCarrinhosDeJardel = 11   # estado 2

# ╔═╡ 00000005-0000-4000-8000-000000000000
# a transformação entre dois estados quaisquer
calcularTransformacaoEntreEstados(estado1, estado2) = estado1 - estado2

# ╔═╡ 00000006-0000-4000-8000-000000000000
diferencaAMenosDeJardel = calcularTransformacaoEntreEstados(qtdCarrinhosDeMarcus, qtdCarrinhosDeJardel)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
